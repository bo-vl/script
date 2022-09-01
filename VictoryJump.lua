local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Network |Victory Jump|", HidePremium = false,IntroText = "Victory Jump", SaveConfig = false, ConfigFolder = "OrionTest"})

--values

_G.Autowin = true

--functions

function Autowin()
    while _G.Autowin == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 984929.625, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 602596.125, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 299802.875, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 499996.625, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 1001.75, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 200498.125, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 100195.875, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 26092.125, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 803648.625, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 11026.625, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 51290.625, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 900736.375, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 5007.75, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 2500.25, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 1739.25, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 368, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10.875, 708819.125, 72.5, 1, 0, 0, 0, 1, 0, 0, 0, 1)
        wait(1)
    end
end

--tabs

local AutoFarm = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--toggles/buttons/dropdowns

AutoFarm:AddToggle({
	Name = "Auto Win",
	Default = false,
	Callback = function(Value)
		_G.Autowin = Value
        Autowin()
	end    
})

OrionLib:Init()