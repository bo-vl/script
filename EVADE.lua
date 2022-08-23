local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub |Evade|", HidePremium = false,IntroText = "Evade", SaveConfig = false, ConfigFolder = "OrionTest"})
local players = game.Players:GetPlayers()

local CharTab= Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

CharTab:AddBind({
	Name = "Reset HipHeigth",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = -1
	end    
})

CharTab:AddBind({
	Name = "Set hipheight 20",
	Default = Enum.KeyCode.X,
	Hold = false,
	Callback = function()
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 20
	end    
})


OrionLib:Init()