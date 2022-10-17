local StarterPlayer = game:GetService("StarterPlayer")
local Workspace = game:GetService("Workspace")
local Light = game:GetService("Lighting")
local players = game.Players:GetPlayers()
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

Library:SetWatermark('Hydra Network | Redbox2 v2.0')

getgenv().Color = BrickColor
getgenv().HeadSize = 10
getgenv().Rootpart = 50
getgenv().Disabled = false

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
    Title = 'RedBox2 v2',
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
local Hitbox = Tabs.Main:AddRightGroupbox('Toggles')
local Modifieres = Tabs.Main1:AddLeftGroupbox('Slider Modifieres')
local Modifieres1 = Tabs.Main1:AddLeftGroupbox('Keybind Modifieres')
local Modifieres2 = Tabs.Main1:AddRightGroupbox('Button Modifieres')

Sliders:AddSlider('HitboxHead', {
    Text = 'Hitbox Slider (head)',
    Default = 0,
    Min = 0,
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
    Max = 100,
    Rounding = 1,
    Compact = false,
})

Options.HitboxRoot:OnChanged(function()
    Rootpart = Options.HitboxRoot.Value
end)


ColorWheel:AddLabel('Hitbox Color'):AddColorPicker('ColorPicker', {
    Default = Color3.new(0, 1, 0),
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
    Default = 0,
    Min = 0,
    Max = 250,
    Rounding = 1,
    Compact = false,
})

Options.Jump:OnChanged(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.Jump.Value
end)

Modifieres:AddSlider('Fov', {
    Text = 'Fov slider',
    Default = 70,
    Min = 0,
    Max = 120,
    Rounding = 1,
    Compact = false,
})

Options.Fov:OnChanged(function()
    game:GetService'Workspace'.Camera.FieldOfView = Options.Fov.Value
end)

Modifieres1:AddLabel('Inf Ammo'):AddKeyPicker('KeyPicker', {
    Default = 'R',
    SyncToggleState = false, 
    Mode = 'Hold',
    Text = 'Inf Ammo',
    NoUI = false,
})

Options.KeyPicker:OnClick(function()
    KeyPicker:GetState()
end)


task.spawn(function()
    while true do
        wait(0.1)
        local state = Options.KeyPicker:GetState()
        if state then
            local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
            local m = require(Tool.toolSettings)
            game:GetService("Players").LocalPlayer.Character.Humanoid:UnequipTools()
            game:GetService("Players").LocalPlayer.Character.Humanoid:EquipTool(Tool)
            game:GetService("ReplicatedStorage").Assets.Remotes.syncAmmo:FireServer(1000000,1000000, Tool)
        end
        if Library.Unloaded then break end
    end
end)

Modifieres1:AddLabel('No Recoil'):AddKeyPicker('NoRecoil', {
    Default = 'T',
    SyncToggleState = false, 
    Mode = 'Hold',
    Text = 'No Recoil',
    NoUI = false,
})

Options.NoRecoil:OnClick(function()
    NoRecoil:GetState()
end)

task.spawn(function()
    while true do
        wait(0.1)
        local state = Options.NoRecoil:GetState()
        if state then
            local Tool = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool")
            local m = require(Tool.toolSettings)
            m.firingRecoilEnabled = false
        end
        if Library.Unloaded then break end
    end
end)

local MyButton = Modifieres2:AddButton('Full Bright', function()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    game.Lighting.FogEnd = 100000
    game.Lighting.FogStart = 0
    game.Lighting.Brightness = 5
    game.Lighting.GlobalShadows = false
end)

local MyButton = Modifieres2:AddButton('Turn off watermark', function()
    Library:SetWatermarkVisibility(false)
end)

local MyButton = Modifieres2:AddButton('Turn on watermark', function()
    Library:SetWatermarkVisibility(true)
end)

local MyButton = Modifieres2:AddButton('Turn on Keybind Gui', function()
    Library.KeybindFrame.Visible = true;
end)

local MyButton = Modifieres2:AddButton('Turn off Keybind Gui', function()
    Library.KeybindFrame.Visible = false;
end)

Hitbox:AddToggle('Disa', {
    Text = 'Hitbox Toggle',
    Default = false,
    Tooltip = 'Toggles the hitbox',
})

Toggles.Disa:OnChanged(function(Value)
    Disabled = Value
end)

--some functions
game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/250)
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