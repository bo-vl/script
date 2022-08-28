local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub |Nico's nextbot|", HidePremium = false,IntroText = "Nico's nextbot 1.0", SaveConfig = false, ConfigFolder = "OrionTest"})
--locals
local Light = game:GetService("Lighting")
autofarm1 = true

--functions

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

function autofarm()
    while autofarm1 == true do
        game:GetService("ReplicatedStorage").events.respawnchar:FireServer()
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 10
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 30
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 40
        wait(1)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = 50
        wait(2)
    end
end

--tabs

local MainTab = Window:MakeTab({
	Name = "Main Features",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab= Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--sliders

local TargetWalkspeed
MainTab:AddSlider({
	Name = "Speed",
	Min = -2,
	Max = 100,
	Default = -2,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

MainTab:AddSlider({
    Name = "Hip height",
    Min = 3,
    Max = 100,
    Default = 3,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    Callback = function(HipValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
    end    
})

--buttons

MiscTab:AddButton({
	Name = "Full Bright",
	Callback = function()
        dofullbright()
  	end    
})

--toggles

MainTab:AddToggle({
	Name = "Time Auto Farm",
	Default = false,
	Callback = function(Value)
		autofarm1 = Value
        autofarm()
	end    
})

--others

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)



setclipboard("https://discord.gg/k9a4zym5uG")

OrionLib:MakeNotification({
Name = "Join Discord",
Content = "Join the Discord Copied in your clip Board",
Image = "rbxassetid://4483345998",
Time = 5
})

OrionLib:Init()