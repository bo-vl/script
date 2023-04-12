
local Request = (syn and syn.request or request or http and http.request or http_request) or error("No request function")
local plrs = game:GetService('Players')
local lplr = plrs.LocalPlayer
local mouse = lplr:GetMouse()
local camera = workspace.CurrentCamera
local Fov = Drawing.new("Circle")
local DeadZone = Drawing.new("Circle")
local RunService = game:GetService("RunService")
local vu = game:GetService("VirtualUser")
local WorldToViewportPoint = camera.WorldToViewportPoint
local headoff = Vector3.new(0, 0.5, 0)
local legoff = Vector3.new(0, 3, 0)

getgenv().TeamColor = Color3.fromRGB(0, 255, 0)
getgenv().EnemyColor = Color3.fromRGB(255, 0, 0)
getgenv().TeamColorOutline = Color3.fromRGB(0, 255, 0)
getgenv().EnemyColorOutline = Color3.fromRGB(255, 0, 0)
getgenv().NormalColor = Color3.fromRGB(89, 91, 89)
getgenv().NormalColorOutline = Color3.fromRGB(89, 91, 89)
getgenv().VisableColorOutline = Color3.fromRGB(255, 255, 255)
getgenv().VisableColor = Color3.fromRGB(255, 255, 255)
getgenv().PlayerInsideFovOutline = Color3.fromRGB(234, 154, 154)
getgenv().PlayerInsideFovColor = Color3.fromRGB(234, 154, 154)
getgenv().DeadZoneColor = Color3.fromRGB(0, 0, 0)
getgenv().FovColor = Color3.fromRGB(255, 255, 255)
getgenv().BoxFilled = false
getgenv().VisableCheckEsp = false
getgenv().PlayerInsideFovToggle = false
getgenv().Distance = 1

getgenv().Assist = false
getgenv().TeamCheck = false
getgenv().teamcheck = false
getgenv().VisableCheck = false
getgenv().Triggerbot = false
getgenv().boxesp = true

DeadZone.Radius = 25
DeadZone.Color = getgenv().DeadZoneColor
DeadZone.Filled = false
DeadZone.NumSides = 32 
DeadZone.Position = Vector2.new(20, 20)
DeadZone.Transparency = 0.5

Fov.Radius = 50
Fov.Color = getgenv().FovColor
Fov.Filled = false
Fov.NumSides = 32 
Fov.Position = Vector2.new(20, 20)
Fov.Transparency = 0.1

local function updateDeadZoneColor()
    DeadZone.Color = getgenv().DeadZoneColor
end
updateDeadZoneColor()
getgenv().DeadZoneColorChanged = updateDeadZoneColor
local function updateFovColor()
    Fov.Color = getgenv().FovColor
end
updateFovColor()
getgenv().FovColorChanged = updateFovColor

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local function isPlayerWithinFOV(player)
    local character = player.Character
    if not character or not character:IsDescendantOf(workspace) then
        return false
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or not humanoid.RootPart then
        return false
    end

    local position, onScreen = camera:WorldToViewportPoint(humanoid.RootPart.Position)
    if not onScreen then
        return false
    end

    local distanceFromCenter = (Vector2.new(position.X, position.Y) - Fov.Position).Magnitude
    return distanceFromCenter <= Fov.Radius
end

local function isPlayerVisible(player)
    local character = player.Character
    if not character or not character:IsDescendantOf(workspace) then
        print("Character not found or not in workspace")
        return false
    end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid or not humanoid.RootPart then
        print("Humanoid or RootPart not found")
        return false
    end

    local camera = workspace.CurrentCamera
    if not camera then
        print("Camera not found")
        return false
    end

    local rayDirection = (humanoid.RootPart.Position - camera.CFrame.Position).Unit
    local rayOrigin = camera.CFrame.Position + (rayDirection * 3)

    local ignoreList = {}
    table.insert(ignoreList, camera)

    local ray = Ray.new(rayOrigin, rayDirection * 1000)
    local hitPart, hitPosition = workspace:FindPartOnRayWithIgnoreList(ray, ignoreList)
    if hitPart then
        if hitPart:IsDescendantOf(player.Character) and hitPosition then
            return true
        else
            return false
        end
    else
        return false
    end
end



local function getPlayersWithinFOV()
    local playersWithinFOV = {}
    local players = game:GetService("Players"):GetPlayers()
    for i = 1, #players do
        local player = players[i]
        if player ~= lplr and isPlayerWithinFOV(player) then
            if getgenv().VisableCheck == true then
                if isPlayerVisible(player) then
                    table.insert(playersWithinFOV, player)
                end
            else
                table.insert(playersWithinFOV, player)
            end
        end
    end
    return playersWithinFOV
end

local function getClosestPlayer(players)
    local closestPlayer, closestDistance
    local cameraPos = workspace.CurrentCamera.CFrame.Position
    for i = 1, #players do
        local player = players[i]
        local character = player.Character
        if character and character:IsDescendantOf(workspace) then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and humanoid.RootPart then
                local rootPartPos = humanoid.RootPart.Position
                local distanceFromCamera = (rootPartPos - cameraPos).Magnitude
                if not getgenv().Distance or distanceFromCamera < getgenv().Distance then
                    if not closestDistance or distanceFromCamera < closestDistance then
                        closestPlayer = player
                        closestDistance = distanceFromCamera
                    end
                end
            end
        end
    end
    return closestPlayer
end

local desiredBodyPart = "Head"

local bodyPartPresets = {
    Head = Vector3.new(0, 0.65, 0),
    UpperTorso = Vector3.new(0, 0.5, 0),
    LowerTorso = Vector3.new(0, 0.35, 0),
    RightHand = Vector3.new(1, 0, 0),
    LeftHand = Vector3.new(-1, 0, 0)
}

local function updateDeadZonePosition()
    local playersWithinFOV = getPlayersWithinFOV()
    if #playersWithinFOV > 0 then
        local closestPlayer = nil
        if getgenv().TeamCheck then
            for _, player in ipairs(playersWithinFOV) do
                if player ~= lplr and player.Team ~= lplr.Team then
                    closestPlayer = closestPlayer or player
                    if player.Character and player.Character:FindFirstChildOfClass("Humanoid") then
                        closestPlayer = player
                        break
                    end
                end
            end
        else
            closestPlayer = getClosestPlayer(playersWithinFOV)
        end
        if closestPlayer then
            local character = closestPlayer.Character
            if character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid and humanoid.RootPart then
                    local rootPart = humanoid.RootPart
                    local bodyPart = character:FindFirstChild(desiredBodyPart)
                    if not bodyPart or not bodyPart:IsDescendantOf(character) then
                        bodyPart = rootPart
                    end
                    local offset = bodyPartPresets[desiredBodyPart] or Vector3.new(0, 0, 0)
                    local bodyPartScreenPos, onScreen = camera:WorldToViewportPoint(bodyPart.Position + offset)
                    if onScreen then
                        local rootPartScreenPos = camera:WorldToViewportPoint(rootPart.Position)
                        local relativePos = bodyPartScreenPos - rootPartScreenPos
                        local deadzonePos = Vector2.new(rootPartScreenPos.X + relativePos.X, rootPartScreenPos.Y + relativePos.Y)
                        local mousePos = Vector2.new(mouse.X, mouse.Y)
                        local distance = (deadzonePos - mousePos).Magnitude
                        local moveAmount = math.min(distance, DeadZone.Radius) * 0.5
                        local moveDirection = (deadzonePos - mousePos).Unit
                        local moveVector = Vector2.new(moveDirection.X * moveAmount, 0)
                        
                        if getgenv().Assist == true then
                            mousemoverel(moveVector.X, moveVector.Y)
                        end
                        
                        if getgenv().Triggerbot == true and isPlayerWithinFOV(closestPlayer) then
                            local function isPlayerVisibleToggle(player)
                                if getgenv().VisibleCheck then
                                    return isPlayerVisible(player)
                                else
                                    return true
                                end
                            end
                            
                            if isPlayerVisibleToggle(closestPlayer) then
                                vu:Button1Down(Vector2.new())
                                wait()
                                vu:Button1Up(Vector2.new())
                            end
                        end
                        
                        DeadZone.Position = deadzonePos
                        return
                    end
                end
            end
        end
    end
    
    DeadZone.Position = DeadZone.Position:Lerp(Fov.Position, 0.5)
end


local function updateFOV()
    Fov.Position = Vector2.new(mouse.X, mouse.Y + 36)
    updateDeadZonePosition()
end

mouse.Move:Connect(updateFOV)
local updateInterval = 0.1
local timeSinceLastUpdate = 0
RunService.Heartbeat:Connect(function(deltaTime)
    timeSinceLastUpdate = timeSinceLastUpdate + deltaTime
    if timeSinceLastUpdate >= updateInterval then
        updateFOV()
        timeSinceLastUpdate = 0
    end
end)

for _,v in pairs(plrs:GetChildren()) do
    local boxoutline = Drawing.new("Square")
    local box = Drawing.new("Square")
    
    boxoutline.Visible = false
    boxoutline.Color = Color3.fromRGB(0, 0, 0)
    boxoutline.Thickness = 2
    boxoutline.Filled = getgenv().BoxFilled

    box.Visible = false
    box.Color = Color3.fromRGB(43, 42, 42)
    box.Thickness = 1
    box.Filled = getgenv().BoxFilled
    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 and getgenv().boxesp == true then
                if getgenv().teamcheck == true then
                    if v.Team == lplr.Team then
                        boxoutline.Color = getgenv().TeamColorOutline
                        box.Color = getgenv().TeamColor
                    else
                        boxoutline.Color = getgenv().EnemyColorOutline
                        box.Color = getgenv().EnemyColor
                    end
                else
                    boxoutline.Color = getgenv().NormalColorOutline
                    box.Color = getgenv().NormalColor
                end
    
                local isVisible = isPlayerVisible(v)
    
                if getgenv().VisableCheckEsp == true then
                    if not isVisible then
                        boxoutline.Color = getgenv().VisableColorOutline
                        box.Color = getgenv().VisableColor
                    end
                end

                local isFov = isPlayerWithinFOV(v)

                if getgenv().PlayerInsideFovToggle == true then
                    if isFov then
                        boxoutline.Color = getgenv().PlayerInsideFovOutline
                        box.Color = getgenv().PlayerInsideFovColor
                    end
                end

                local vector, onScreen = WorldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = WorldToViewportPoint(camera, RootPart.Position)
                local HeadPosition = WorldToViewportPoint(camera, Head.Position + headoff)
                local LegPostion = WorldToViewportPoint(camera, RootPart.Position - legoff) 
                if onScreen then
                    boxoutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPostion.Y)
                    boxoutline.Position = Vector2.new(RootPosition.X - boxoutline.Size.X/2, RootPosition.Y - boxoutline.Size.Y/2)
                    box.Size = boxoutline.Size
                    box.Position = boxoutline.Position
                    boxoutline.Visible = true
                    box.Visible = true
                else
                    boxoutline.Visible = false
                    box.Visible = false
                end
            else
                boxoutline.Visible = false
                box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end

plrs.PlayerAdded:Connect(function(v)
    local boxoutline = Drawing.new("Square")
    local box = Drawing.new("Square")

    boxoutline.Visible = false
    boxoutline.Color = Color3.fromRGB(0, 0, 0)
    boxoutline.Thickness = 2
    boxoutline.Filled = getgenv().BoxFilled

    box.Visible = false
    box.Color = Color3.fromRGB(43, 42, 42)
    box.Thickness = 1
    box.Filled = getgenv().BoxFilled

    function boxesp()
        game:GetService("RunService").RenderStepped:Connect(function()
            if v.Character ~= nil and v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("HumanoidRootPart") ~= nil and v ~= lplr and v.Character.Humanoid.Health > 0 and getgenv().boxesp == true then
                if getgenv().teamcheck == true then
                    if v.Team == lplr.Team then
                        boxoutline.Color = getgenv().TeamColorOutline
                        box.Color = getgenv().TeamColor
                    else
                        boxoutline.Color = getgenv().EnemyColorOutline
                        box.Color = getgenv().EnemyColor
                    end
                else
                    boxoutline.Color = getgenv().NormalColorOutline
                    box.Color = getgenv().NormalColor
                end
    
                local isVisible = isPlayerVisible(v)
    
                if getgenv().VisableCheckEsp == true then
                    if not isVisible then
                        boxoutline.Color = getgenv().VisableColorOutline
                        box.Color = getgenv().VisableColor
                    end
                end
    
                local isFov = isPlayerWithinFOV(v)

                if getgenv().PlayerInsideFovToggle == true then
                    if isFov then
                        boxoutline.Color = getgenv().PlayerInsideFovOutline
                        box.Color = getgenv().PlayerInsideFovColor
                    end
                end

                local vector, onScreen = WorldToViewportPoint(camera, v.Character.HumanoidRootPart.Position)
                local RootPart = v.Character.HumanoidRootPart
                local Head = v.Character.Head
                local RootPosition, RootVis = WorldToViewportPoint(camera, RootPart.Position)
                local HeadPosition = WorldToViewportPoint(camera, Head.Position + headoff)
                local LegPostion = WorldToViewportPoint(camera, RootPart.Position - legoff) 
                if onScreen then
                    boxoutline.Size = Vector2.new(1000 / RootPosition.Z, HeadPosition.Y - LegPostion.Y)
                    boxoutline.Position = Vector2.new(RootPosition.X - boxoutline.Size.X/2, RootPosition.Y - boxoutline.Size.Y/2)
                    box.Size = boxoutline.Size
                    box.Position = boxoutline.Position
                    boxoutline.Visible = true
                    box.Visible = true
                else
                    boxoutline.Visible = false
                    box.Visible = false
                end
            else
                boxoutline.Visible = false
                box.Visible = false
            end
        end)
    end
    coroutine.wrap(boxesp)()
end)

local Window = Library:CreateWindow({
    Title = 'Project Validus',
    Center = false,
    AutoShow = true,
    TabPadding = 4,
})

local Tabs = {
    Main = Window:AddTab('Main'),
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

local tab1 = Tabs.Main:AddLeftTabbox()
local AimAssistSetting = tab1:AddTab('Aim Assist')
local FovSetting = tab1:AddTab('Fov Settings')
local tab2 = Tabs.Main:AddRightTabbox()
local MasterSwitch = tab2:AddTab('Main Settings')
local ColorSettings = tab2:AddTab('Box Settings')

--masterSwitch

MasterSwitch:AddToggle('EspSwitch', {
    Text = 'Esp Masterswitch',
    Default = false,
    Tooltip = 'Esp players',
})

Toggles.EspSwitch:OnChanged(function()
    getgenv().boxesp = Toggles.EspSwitch.Value
end)

MasterSwitch:AddToggle('CheckTeam', {
    Text = 'Team Check',
    Default = false,
    Tooltip = 'Changes the color of the esp depending on team',
})

Toggles.CheckTeam:OnChanged(function()
    getgenv().teamcheck = Toggles.CheckTeam.Value
end)

MasterSwitch:AddToggle('VisableCheckyes', {
    Text = 'Wall Check',
    Default = false,
    Tooltip = 'Changes the color of esp if player not visable',
})

Toggles.VisableCheckyes:OnChanged(function()
    getgenv().VisableCheckEsp = Toggles.VisableCheckyes.Value
end)

MasterSwitch:AddToggle('infovcolorchange', {
    Text = 'Player Inside Fov',
    Default = false,
    Tooltip = 'Changes the color of esp if player is inside fov',
})

Toggles.infovcolorchange:OnChanged(function()
    getgenv().PlayerInsideFovToggle = Toggles.infovcolorchange.Value
end)


ColorSettings:AddLabel('Enemy Color'):AddColorPicker('ColorPicker-1', {
    Default = Color3.new(1, 0, 0),
    Title = 'Enemy Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().EnemyColor = Value
    end
})

ColorSettings:AddLabel('Enemy Color Outline'):AddColorPicker('ColorPicker1', {
    Default = Color3.new(1, 0, 0),
    Title = 'Enemy Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().EnemyColorOutline = Value
    end
})

ColorSettings:AddLabel('Team Color'):AddColorPicker('ColorPicker2', {
    Default = Color3.new(0, 1, 0),
    Title = 'Team Color',
    Transparency = 0,

    Callback = function(Value)
        getgenv().TeamColor = Value
    end
})

ColorSettings:AddLabel('Team Color Outline'):AddColorPicker('ColorPicker3', {
    Default = Color3.new(0, 1, 0),
    Title = 'Enemy Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().TeamColorOutline = Value
    end
})

ColorSettings:AddLabel('Normal Color'):AddColorPicker('ColorPicker4', {
    Default = Color3.new(0.117647, 0.121568, 0.117647),
    Title = 'Normal Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().NormalColor = Value
    end
})

ColorSettings:AddLabel('Normal Color Outline'):AddColorPicker('ColorPicker5', {
    Default = Color3.new(0.117647, 0.121568, 0.117647),
    Title = 'Normal Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().NormalColorOutline = Value
    end
})

ColorSettings:AddLabel('Not Visable Color Outline'):AddColorPicker('ColorPicker6', {
    Default = Color3.new(0.560784, 0.568627, 0.560784),
    Title = 'Not Visable Color Outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().VisableColorOutline = Value
    end
})

ColorSettings:AddLabel('Not Visable Color'):AddColorPicker('ColorPicker7', {
    Default = Color3.new(0.560784, 0.568627, 0.560784),
    Title = 'Not Visable Color',
    Transparency = 0,

    Callback = function(Value)
        getgenv().VisableColor = Value
    end
})

ColorSettings:AddLabel('Player Inside Fov Color Outline'):AddColorPicker('ColorPicker8', {
    Default = Color3.new(0.921568, 0.929411, 0.627450),
    Title = 'Player Inside Fov Color outline',
    Transparency = 0,

    Callback = function(Value)
        getgenv().PlayerInsideFovOutline = Value
    end
})

ColorSettings:AddLabel('Player Inside Fov Color Color'):AddColorPicker('ColorPicker9', {
    Default = Color3.new(0.921568, 0.929411, 0.627450),
    Title = 'Player Inside Fov Color',
    Transparency = 0,

    Callback = function(Value)
        getgenv().PlayerInsideFovColor = Value
    end
})

ColorSettings:AddToggle('Filedornot', {
    Text = 'Box Filled',
    Default = false,
    Tooltip = 'if the box is filled or not',

    Callback = function(Value)
        getgenv().BoxFilled = Value
    end
})

--fov settings
FovSetting:AddToggle('FovVisable', {
    Text = 'Fov Visable',
    Default = false,
    Tooltip = 'changes the fov visability',
})

Toggles.FovVisable:OnChanged(function()
    Fov.Visible = Toggles.FovVisable.Value
    DeadZone.Visible = Toggles.FovVisable.Value
end)

FovSetting:AddSlider('FovTransparency', {
    Text = 'Fov Transparency',
    Default = 0.2,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = true,
})

Options.FovTransparency:OnChanged(function()
    Fov.Transparency = Options.FovTransparency.Value
end)

FovSetting:AddSlider('DeadZoneTransparency', {
    Text = 'DeadZone Transparency',
    Default = 0.5,
    Min = 0,
    Max = 1,
    Rounding = 1,
    Compact = true,
})

Options.DeadZoneTransparency:OnChanged(function()
    DeadZone.Transparency = Options.DeadZoneTransparency.Value
end)

FovSetting:AddSlider('FovSize', {
    Text = 'Fov Size',
    Default = 50,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Compact = true,
})

Options.FovSize:OnChanged(function()
    Fov.Radius = Options.FovSize.Value
end)

FovSetting:AddSlider('DeadZoneSize', {
    Text = 'DeadZone Size',
    Default = 25,
    Min = 1,
    Max = 1000,
    Rounding = 0,
    Compact = true,
})

Options.DeadZoneSize:OnChanged(function()
    DeadZone.Radius = Options.DeadZoneSize.Value
end)

FovSetting:AddLabel('Fov Color'):AddColorPicker('FovColors', {
    Default = Color3.new(1, 1, 1),
    Title = 'Fov Color',
    Transparency = 0,

    Callback = function(Value)
        getgenv().FovColor = Value
        if getgenv().FovColorChanged then
            getgenv().FovColorChanged()
        end
    end
})

FovSetting:AddLabel('DeadZone color'):AddColorPicker('DeadZoneColors', {
    Default = Color3.new(0, 0, 0),
    Title = 'DeadZone Color',
    Transparency = 0,

    Callback = function(Value)
        getgenv().DeadZoneColor = Value
        
        if getgenv().DeadZoneColorChanged then
            getgenv().DeadZoneColorChanged()
        end
    end
})

--assist settings

AimAssistSetting:AddToggle('AimAssist', {
    Text = 'Aim Assist',
    Default = false,
    Tooltip = 'Assists you with aim',
})

Toggles.AimAssist:OnChanged(function()
    getgenv().Assist = Toggles.AimAssist.Value
end)

AimAssistSetting:AddToggle('Triggetbots', {
    Text = 'Triggerbot',
    Default = false,
    Tooltip = 'Auto shoots at the player',
})

Toggles.Triggetbots:OnChanged(function()
    getgenv().Triggerbot = Toggles.Triggetbots.Value
end)

AimAssistSetting:AddToggle('TeamCheck', {
    Text = 'Team Check',
    Default = false,
    Tooltip = 'Checks if the player is on your team',
})

Toggles.TeamCheck:OnChanged(function()
    getgenv().TeamCheck = Toggles.TeamCheck.Value
end)

AimAssistSetting:AddToggle('VisableCheck', {
    Text = 'Visable Check',
    Default = false,
    Tooltip = 'Check if the player is visable or not',
})

Toggles.VisableCheck:OnChanged(function()
    getgenv().VisableCheck = Toggles.VisableCheck.Value
end)

AimAssistSetting:AddSlider('Distance', {
    Text = 'Distance',
    Default = 100,
    Min = 1,
    Max = 5000,
    Rounding = 0,
    Compact = true,
})

Options.Distance:OnChanged(function()
    getgenv().Distance = Options.Distance.Value
end)

AimAssistSetting:AddToggle('InfDistance', {
    Text = 'Inf Distance',
    Default = false,
    Tooltip = 'Toggles KeybindFrame',
})

Toggles.InfDistance:OnChanged(function()
    if Toggles.InfDistance.Value then
        getgenv().Distance = math.huge
    else
        getgenv().Distance = Options.Distance.Value
    end
end)

AimAssistSetting:AddDropdown('BodyPart', {
    Values = { 'Head', 'UpperTorso', 'LowerTorso', 'RightHand', 'LeftHand'},
    Default = 1,
    Multi = false,
    Text = 'Body part',
    Tooltip = 'Select a body part to focus on',

    Callback = function(Value)
        desiredBodyPart = Value
        updateDeadZonePosition()
    end
})

--ui settings
Library:SetWatermark('Project-Validus By Hydra#8270')

Library:OnUnload(function()
    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

local MyButton = MenuGroup:AddButton({
    Text = 'Unload',
    Func = function()
        Library:Unload()
    end,
    DoubleClick = true,
    Tooltip = 'Unload Script'
})

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

MenuGroup:AddToggle('keybindframe', {
    Text = 'Keybind Frame',
    Default = false,
    Tooltip = 'Toggles KeybindFrame',
})

Toggles.keybindframe:OnChanged(function()
    Library.KeybindFrame.Visible = Toggles.keybindframe.Value
end)

MenuGroup:AddToggle('Watermark', {
    Text = 'Watermark',
    Default = false,
    Tooltip = 'Toggles Watermark',
})

Toggles.Watermark:OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value)
end)

local MyButton = MenuGroup:AddButton({
    Text = 'Join Discord',
    Func = function()
        Request(
            {
                Url = "http://127.0.0.1:6463/rpc?v=1",
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json",
                    ["origin"] = "https://discord.com",
                },
                Body = game:GetService("HttpService"):JSONEncode(
                    {
                        ["args"] = {
                            ["code"] = "YvwEyH2W6t",
                        },
                        ["cmd"] = "INVITE_BROWSER",
                        ["nonce"] = "."
                    })
            })
    end,
    DoubleClick = false,
    Tooltip = 'makes you join the discord server'
})



Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])