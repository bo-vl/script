local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub |Magic Clicker|", HidePremium = false,IntroText = "Magic Clicker", SaveConfig = false, ConfigFolder = "OrionTest"})

--values

getgenv().AutoClicker = true
getgenv().SelectRebirth = "1"
getgenv().AutoRebirth = true
getgenv().AutoUpgrade = true
getgenv().SelectUpgrade = "clicksMultiplier"
getgenv().AutoHatch = true
getgenv().AutoHatch3 = true
getgenv().SelectEgg = "1"
getgenv().SelectEgg3 = "1"

--functions

function AutoHatch3()
    while AutoHatch3 == true do
        local args = {
            [1] = SelectEgg3,
            [2] = 3,
            [3] = workspace.Eggs:FindFirstChild("0"):FindFirstChild(SelectEgg3)
        }
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
        wait()
    end
end

function AutoHatch()
    while AutoHatch == true do
        local args = {
            [1] = SelectEgg,
            [2] = 1,
            [3] = workspace.Eggs:FindFirstChild("0"):FindFirstChild(SelectEgg)
        }
        game:GetService("ReplicatedStorage").Remotes.BuyEgg:FireServer(unpack(args))
        wait()
    end
end

function AutoUpgrade()
    while AutoUpgrade == true do
        local args = {
            [1] = (SelectUpgrade)
        }
        game:GetService("ReplicatedStorage").Remotes.BuyUpgradeEvent:FireServer(unpack(args))
        wait()
    end
end
    
function AutoRebirth()
    while AutoRebirth == true do
        local args = {
            [1] =(SelectRebirth)
        }
        game:GetService("ReplicatedStorage").Remotes.BuyRebirth:FireServer(unpack(args))
        wait()
    end
end

function AutoClicker()
    while AutoClicker == true do
        game:GetService("ReplicatedStorage").Remotes.CheckClick:FireServer()
        wait(0.0000000000000001)
    end
end

--tabs

local AutoFarm = Window:MakeTab({
	Name = "Auto Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Eggs = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Teleport = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Upgrade = Window:MakeTab({
	Name = "Upgrade",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Guide = Window:MakeTab({
	Name = "Guide",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


--Special Guide Things

local SectionGuide = Guide:AddSection({
	Name = "Egg Guide"
})

Guide:AddLabel("To use Auto Hatch You need to be in range of the Egg")
Guide:AddLabel("If you want to use triple hatch join their group")
Guide:AddLabel("Need To unlock the island before you can buy the egg")

local SectionGuide = Guide:AddSection({
	Name = "Rebirth Guide"
})

Guide:AddLabel("1 > 1")
Guide:AddLabel("2 > 5")
Guide:AddLabel("3 > 10")
Guide:AddLabel("4 > 25")
Guide:AddLabel("5 > 100")
Guide:AddLabel("6 > 500")
Guide:AddLabel("7 > 2.5k")
Guide:AddLabel("8 > 5k")
Guide:AddLabel("9 > 10k")

local SectionGuide = Guide:AddSection({
	Name = "Upgrade Guide"
})

Guide:AddLabel("Everytime You Upgrade its going to cost more stars")

--buttons/toggles/dropdowns

AutoFarm:AddToggle({
	Name = "Auto Clicker",
	Default = false,
	Callback = function(Value)
        AutoClicker = Value
        AutoClicker()
	end    
})

local AutoRebirthSection = AutoFarm:AddSection({
	Name = "Auto Rebirth"
})

AutoFarm:AddDropdown({
	Name = "Select Rebirth number",
	Default = "1",
	Options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"},
	Callback = function(Value)
		_G.SelectRebirth = Value
        print(_G.SelectRebirth)
	end    
})

AutoFarm:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
        AutoRebirth = Value
        AutoRebirth()
	end    
})

Upgrade:AddDropdown({
	Name = "Select Upgrade",
	Default = "clicksMultiplier",
	Options = {"clicksMultiplier", "rebirthButtons", "walkSpeed", "luckyMultiplier", "starsMultiplier", "bonusChances", "petStorage", "petsEquipped"},
	Callback = function(Value)
        _G.SelectUpgrade = Value
	end    
})

Upgrade:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
        AutoUpgrade = Value
        AutoUpgrade()
	end    
})

local SingleEgg = Eggs:AddSection({
	Name = "Single Eggs"
})

Eggs:AddDropdown({
	Name = "Select Egg",
	Default = 1,
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
	Callback = function(Value)
        SelectEgg = Value
	end    
})

Eggs:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
        AutoHatch = Value
        AutoHatch()
	end    
})

local TripleEgg = Eggs:AddSection({
	Name = "Triple Eggs"
})

Eggs:AddDropdown({
	Name = "Select Egg Triple",
	Default = 1,
	Options = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
	Callback = function(Value)
        SelectEgg3 = Value
	end    
})

Eggs:AddToggle({
	Name = "Auto Hatch Triple",
	Default = false,
	Callback = function(Value)
        AutoHatch3 = Value
        AutoHatch3()
	end    
})

Teleport:AddButton({
	Name = "Teleport Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1396.63623046875, 381.5501708984375, 1234.1875)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Jungle",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(360.58990478515625, 301.94964599609375, 1474.7657470703125)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Aque",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(371.8036193847656, 301.82574462890625, 1216.8394775390625)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Farm",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(367.19342041015625, 293.7301025390625, 1952.677001953125)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Magic",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(440.9697265625, 288.9833068847656, 2556.76806640625)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Arcade",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.76762390136719, 301.6367492675781, 1594.0772705078125)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Dino",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(430.3363342285156, 380.2461853027344, 825.5939331054688)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Mine",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(96.0789566040039, 280.6025695800781, 1151.3046875)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Fantasy",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(426.9416198730469, 393.8011779785156, 202.79339599609375)
  	end    
})

OrionLib:Init()