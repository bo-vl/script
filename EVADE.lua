game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
wait(1)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub |Evade|", HidePremium = false,IntroText = "Evade Version 1.5", SaveConfig = false, ConfigFolder = "OrionTest"})

--locals
local GuiService = game:GetService("GuiService")
local Light = game:GetService("Lighting")

--functions and shit

autorev1 = true
AutoSlide = true
money = true
revivedie = true
autowistle = true
autochat1 = true

function autochat()
    while autochat1 == true do
        local ohString1 = "Hydra hub on top"
        local ohString2 = "All"
        game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(ohString1, ohString2)
        wait(1)
    end
end

function autowistlefunction()
    while autowistle == true do
        local ohString1 = "Whistle"
        local ohBoolean2 = true
        game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
        game:GetService("ReplicatedStorage").Events.Whistle:FireServer()
        wait(5)
    end
end

function god()
    while revivedie == true do
        game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
        wait(1)
    end
end

function dofullbright()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    game.Lighting.FogEnd = 100000
    game.Lighting.FogStart = 0
    game.Lighting.ClockTime = 14
    game.Lighting.Brightness = 2
    game.Lighting.GlobalShadows = false
    end

function freemoney()
    while money == true do
        local ohString1 = "Free money <font color=\"rgb(100,255,100)\">($99999)</font>"
        game:GetService("Players").LocalPlayer.PlayerGui.HUD.Messages.Use:Fire(ohString1)
        wait(5)
    end
end

function Autoslide()
    while AutoSlide == true do
    game:GetService("ReplicatedStorage").ModuleStorage.WeaponBase.Framework.BaseVM.Slide:Fire()
    local ohString1 = "Crouch"
    local ohBoolean2 = true
    game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
    wait()
    end
end
    

function autorev()
    while autorev1 == true do
        local ohString1 = "Caribbeanv"
        local ohBoolean2 = false
        game:GetService("ReplicatedStorage").Events.Revive.RevivePlayer:FireServer(ohString1, ohBoolean2)
        wait()
    end
end
--tabs

local MainTab= Window:MakeTab({
	Name = "Main features",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab= Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FunTab= Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TestTab = Window:MakeTab({
	Name = "Test",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = true
})

--sliders

local MainTab3 = MainTab:AddSection({
	Name = "Sliders"
})

local TargetWalkspeed
MainTab:AddSlider({
	Name = "Speed",
	Min = -1,
	Max = 100,
	Default = -1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

MainTab:AddSlider({
    Name = "Hip height",
    Min = -1.45,
    Max = 100,
    Default = -1.45,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    Callback = function(HipValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
    end    
})

--toggles

local FunTab2 = FunTab:AddSection({
	Name = "Toggles"
})

local MiscTab3 = MainTab:AddSection({
	Name = "Toggles"
})

FunTab:AddToggle({
	Name = "AutoSlide (press c for onces after turning on)",
	Default = false,
	Callback = function(Value)
        AutoSlide = Value
		Autoslide()
	end    
})

FunTab:AddToggle({
	Name = "fake money giver",
	Default = false,
	Callback = function(Value)
        money = Value
        freemoney()
	end    
})

MainTab:AddToggle({
	Name = "auto revive (only need to press e instead of holding)",
	Default = false,
	Callback = function(Value)
        autorev1 = Value
        autorev()
	end    
})

MainTab:AddToggle({
	Name = "auto respawn (you respawn when you get downed)",
	Default = false,
	Callback = function(Value)
        revivedie = Value
        god()
	end    
})

FunTab:AddToggle({
	Name = "Auto Wistle",
	Default = false,
	Callback = function(Value)
		autowistle = Value
        autowistlefunction()
	end    
})

--buttons

local FunTab3 = FunTab:AddSection({
	Name = "Buttons"
})

local MiscTab2 = MiscTab:AddSection({
	Name = "Buttons"
})

MiscTab:AddButton({
	Name = "Inf Jump",
	Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

MiscTab:AddButton({
	Name = "Q to Teleport",
	Callback = function()
        plr = game.Players.LocalPlayer 
        hum = plr.Character.HumanoidRootPart 
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "q" then
            if mouse.Target then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
                end
                end
                end)
  	end    
})

MiscTab:AddButton({
	Name = "Respawn",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
  	end    
})

MiscTab:AddButton({
	Name = "Full Bright",
	Callback = function()
        dofullbright()
  	end    
})

MiscTab:AddButton({
	Name = "Return Too Main Menu",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
  	end    
})

MiscTab:AddButton({
	Name = "Low Quality",
	Callback = function()
        local ohString1 = "LowQuality"
        local ohBoolean2 = true
        game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(ohString1, ohBoolean2)
  	end    
})

FunTab:AddButton({
    Name = "Free cam (shift + P)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/script/main/Freecam.lua"))()
      end    
})

--keybinds

local MiscTab1 = MiscTab:AddSection({
	Name = "KeyBinds"
})

local FunTab1 = FunTab:AddSection({
	Name = "KeyBinds"
})

MiscTab:AddBind({
	Name = "Random Vote",
	Default = Enum.KeyCode.X,
	Hold = false,
	Callback = function()
        local RandomVote = math.random(3)
		local ohNumber1 = (RandomVote)
        game:GetService("ReplicatedStorage").Events.Vote:FireServer(ohNumber1)
	end    
})

FunTab:AddBind({
	Name = "Random Emote",
	Default = Enum.KeyCode.Z,
	Hold = false,
	Callback = function()
        local number = math.random(4)
        local ohString1 = (number)
        game:GetService("ReplicatedStorage").Events.Emote:FireServer(ohString1)
	end    
})

MiscTab:AddBind({
	Name = "Respawn",
	Default = Enum.KeyCode.R,
	Hold = false,
	Callback = function()
        game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
	end    
})

--test

TestTab:AddToggle({
	Name = "Spam Chat",
	Default = false,
	Callback = function(Value)
		autochat1 = Value
        autochat()
	end    
})


game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

OrionLib:Init()