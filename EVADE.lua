local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub |Evade|", HidePremium = false,IntroText = "Evade", SaveConfig = false, ConfigFolder = "OrionTest"})
local players = game.Players:GetPlayers()

local CharTab= Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

CharTab:AddSlider({
    Name = "Hip height",
    Min = -1.75,
    Max = 100,
    Default = -1.75,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    Callback = function(HipValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
    end    
})

--functions and shit

local pcl = Instance.new("SpotLight")
pcl.Brightness = 10
pcl.Face = Enum.NormalId.Front
pcl.Range = 90
pcl.Parent = game.Players.LocalPlayer.Character.Head
pcl.Enabled = false

CharTab:AddToggle({
	Name = "Headlight",
	Default = false,
    Callback = function(Value)
        pcl.Enabled = Value
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