local Light = game:GetService("Lighting")
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local ownerId = game.CreatorId
game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        game.Players.LocalPlayer:Kick("Owner Joined")
    end
end)

getgenv().Color = BrickColor
getgenv().HeadSize = 10
getgenv().Rootpart = 50
getgenv().Disabled = false

game:GetService('RunService').RenderStepped:connect(function()
if Disabled == false then
    for i,v in next, game:GetService('Players'):GetPlayers() do
        if v.Name ~= game:GetService('Players').LocalPlayer.Name then
        pcall(function()
        v.Character.Head.Size = Vector3.new(1,1,1)
        v.Character.HumanoidRootPart.Size = Vector3.new(2,2,2)
        v.Character.Head.Transparency = 0
        v.Character.HumanoidRootPart.Transparency = 0
        v.Character.Head.Material = "Plastic"
        v.Character.HumanoidRootPart.Material = "Plastic"
    end)
end
end
end
end)

game:GetService('RunService').RenderStepped:connect(function()
    if Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
    pcall(function()
    v.Character.Head.Size = Vector3.new(HeadSize,HeadSize,HeadSize)
    v.Character.Head.Transparency = 0.2
    v.Character.Head.BrickColor = BrickColor.new(Color)
    v.Character.Head.Material = "ForceField"
    v.Character.Head.CanCollide = false
    end)
    end
    end
    end
    end)

game:GetService('RunService').RenderStepped:connect(function()
    if Disabled then
    for i,v in next, game:GetService('Players'):GetPlayers() do
    if v.Name ~= game:GetService('Players').LocalPlayer.Name then
    pcall(function()
    v.Character.HumanoidRootPart.Size = Vector3.new(Rootpart,Rootpart,Rootpart)
    v.Character.HumanoidRootPart.Transparency = 0.2
    v.Character.HumanoidRootPart.BrickColor = BrickColor.new(Color)
    v.Character.HumanoidRootPart.Material = "ForceField"
    v.Character.HumanoidRootPart.CanCollide = false
    end)
    end
    end
    end
    end)

local Window = Library:CreateWindow({
    Title = 'HitBox Expander',
    Center = true, 
    AutoShow = true,
})
local Tabs = {
    Main = Window:AddTab('Hitbox'), 
    Main1 = Window:AddTab('Local Player'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}
local Sliders = Tabs.Main:AddLeftGroupbox('Hitbox Sliders')
local ColorWheel = Tabs.Main:AddRightGroupbox('Color Wheel')
local Modifieres = Tabs.Main1:AddLeftGroupbox('Slider Modifieres')
local Modifieres1 = Tabs.Main1:AddRightGroupbox('Button')


Sliders:AddSlider('HitboxHead', {
    Text = 'Hitbox Slider (head)',
    Default = 1,
    Min = 1,
    Max = 5,
    Rounding = 1,
    Compact = false,
})

Options.HitboxHead:OnChanged(function()
    HeadSize = Options.HitboxHead.Value
end)

Sliders:AddSlider('HitboxRoot', {
    Text = 'Hitbox Slider (HumanoidRootPart)',
    Default = 2,
    Min = 2,
    Max = 50,
    Rounding = 1,
    Compact = false,
})

Options.HitboxRoot:OnChanged(function()
    Rootpart = Options.HitboxRoot.Value
end)


ColorWheel:AddLabel('Hitbox Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(1, 1, 1),
    Title = 'Hitbox Color',
})

Options.ColorPicker:OnChanged(function()
    Color = Options.ColorPicker.Value
end)

local TargetWalkspeed
Modifieres:AddSlider('Speed', {
    Text = 'Speed slider',
    Default = 0,
    Min = 0,
    Max = 500,
    Rounding = 1,
    Compact = false,
})

Options.Speed:OnChanged(function()
    TargetWalkspeed = Options.Speed.Value
end)

Modifieres:AddSlider('Jump', {
    Text = 'Jump slider',
    Default = 50,
    Min = 0,
    Max = 250,
    Rounding = 1,
    Compact = false,
})

Options.Jump:OnChanged(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.Jump.Value
end)

--some functions
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/250)
        end
    end)
end)

Sliders:AddToggle('HitboxToggle', {
    Text = 'Hitbox Toggle',
    Default = false,
    Tooltip = 'Toggles the Hitbox',
})

Toggles.HitboxToggle:OnChanged(function()
    Disabled = Toggles.HitboxToggle.Value
end)

local FullBright = Modifieres1:AddButton('Full Bright', function()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    game.Lighting.FogEnd = 100000
    game.Lighting.FogStart = 0
    game.Lighting.ClockTime = 14
    game.Lighting.Brightness = 10
    game.Lighting.GlobalShadows = false
end)

local Rejoin = Modifieres1:AddButton('Rejoin', function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)

local Esp = Modifieres1:AddButton('Player esp', function()
    local dwEntities = game:GetService("Players")
    local dwLocalPlayer = dwEntities.LocalPlayer 
    local dwRunService = game:GetService("RunService")
    
    local settings_tbl = {
        ESP_Enabled = true,
        ESP_TeamCheck = false,
        Chams = true,
        Chams_Color = Color3.fromRGB(255, 255, 255),
        Chams_Transparency = 0.9,
        Chams_Glow_Color = Color3.fromRGB(255, 238, 238)
    }
    
    function destroy_chams(char)
        for k,v in next, char:GetChildren() do 
            if v:IsA("BasePart") and v.Transparency ~= 1 then
                if v:FindFirstChild("Glow") and 
                v:FindFirstChild("Chams") then
                    v.Glow:Destroy()
                    v.Chams:Destroy() 
                end 
            end 
        end 
    end
    
    dwRunService.Heartbeat:Connect(function()
        if settings_tbl.ESP_Enabled then
            for k,v in next, dwEntities:GetPlayers() do 
                if v ~= dwLocalPlayer then
                    if v.Character and
                    v.Character:FindFirstChild("HumanoidRootPart") and 
                    v.Character:FindFirstChild("Humanoid") and 
                    v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                        if settings_tbl.ESP_TeamCheck == false then
                            local char = v.Character 
                            for k,b in next, char:GetChildren() do 
                                if b:IsA("BasePart") and 
                                b.Transparency ~= 1 then
                                    if settings_tbl.Chams then
                                        if not b:FindFirstChild("Glow") and
                                        not b:FindFirstChild("Chams") then
                                            local chams_box = Instance.new("BoxHandleAdornment", b)
                                            chams_box.Name = "Chams"
                                            chams_box.AlwaysOnTop = true 
                                            chams_box.ZIndex = 4 
                                            chams_box.Adornee = b 
                                            chams_box.Color3 = settings_tbl.Chams_Color
                                            chams_box.Transparency = settings_tbl.Chams_Transparency
                                            chams_box.Size = b.Size + Vector3.new(0.02, 0.02, 0.02)
                                            local glow_box = Instance.new("BoxHandleAdornment", b)
                                            glow_box.Name = "Glow"
                                            glow_box.AlwaysOnTop = false 
                                            glow_box.ZIndex = 3 
                                            glow_box.Adornee = b 
                                            glow_box.Color3 = settings_tbl.Chams_Glow_Color
                                            glow_box.Size = chams_box.Size + Vector3.new(0.13, 0.13, 0.13)
                                        end
                                    else
                                        destroy_chams(char)
                                    end
                                end
                            end
                        else
                            if v.Team == dwLocalPlayer.Team then
                                destroy_chams(v.Character)
                            end
                        end
                    else
                        destroy_chams(v.Character)
                    end
                end
            end
        else 
            for k,v in next, dwEntities:GetPlayers() do 
                if v ~= dwLocalPlayer and 
                v.Character and 
                v.Character:FindFirstChild("HumanoidRootPart") and 
                v.Character:FindFirstChild("Humanoid") and 
                v.Character:FindFirstChild("Humanoid").Health ~= 0 then
                    destroy_chams(v.Character)
                end
            end
        end
    end)
end)

--settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 
ThemeManager:ApplyToTab(Tabs['UI Settings'])