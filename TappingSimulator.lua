local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub|Tapping Simulator!|", HidePremium = false, IntroText = "Tapping Simulator", SaveConfig = false, ConfigFolder = "OrionTest"})

--Values

_G.autoclick = true
_G.AutoRebirth = true
_G.SelectRebirth = "1"
_G.AutoHatch = true
_G.EggSelect = "Starter"

--functions

function AutoRebirth()
    while _G.AutoRebirth == true do
        local args = {[1] = _G.SelectRebirth}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autoclick()
    while _G.autoclick == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.GetAutoReconnectEnabled:InvokeServer()
        Wait()
    end
end

function AutoHatch()
    while _G.AutoHatch == true do
        local args = {
            [1] = {},
            [2] = (_G.EggSelect),
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait()
    end
end

--tabs

local farmsy = Window:MakeTab({
    Name = "Auto Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Eggs = Window:MakeTab({
    Name = "Egg's",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Teleport = Window:MakeTab({
	Name = "Teleport Island",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local TeleportShop = Window:MakeTab({
	Name = "Teleport Shops",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AutoFarm1 = farmsy:AddSection({
	Name = "AutoFarm"
})

farmsy:AddToggle({
    Name = "Auto Click",
    Default = false,
    Callback = function(Value)
        _G.autoclick = Value
        autoclick()
    end    
})

--toggles/DropDowns

local autofarm2= farmsy:AddSection({
	Name = "Auto Rebirth"
})

farmsy:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
        _G.AutoRebirth = Value
        AutoRebirth()
	end    
})

farmsy:AddDropdown({
	Name = "Rebirth",
	Default = "1",
	Options = {"1", "5", "10", "20", "100", "500", "2000", "4500", "8000", "12500", "18000", "24500", "32000", "40500", "50000"},
	Callback = function(Value)
		_G.SelectRebirth = Value
        print(_G.SelectRebirth)
	end    
})

Eggs:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
        _G.AutoHatch = Value
        AutoHatch()
	end    
})

Eggs:AddDropdown({
	Name = "Select Egg",
	Default = "Starter",
	Options = {"Starter", "Wood Egg", "Jungle Egg", "Forest Egg", "Bee Egg", "Swamp Egg", "Snow Egg", "Desert Egg", "Death Egg", "Beach Egg", "Mine Egg", "Cloud Egg"},
	Callback = function(Value)
        _G.EggSelect = Value
	end    
})


Eggs:AddLabel("All Egg Cost")
Eggs:AddLabel("Starter Egg |Cost 200|")
Eggs:AddLabel("Wood Egg |Cost 2500|")
Eggs:AddLabel("Jungle Egg |Cost 150k|")
Eggs:AddLabel("Forest Egg |Cost 1.5m|")
Eggs:AddLabel("Bee Egg |Cost 5m|")
Eggs:AddLabel("Swamp Egg |Cost 80m|")
Eggs:AddLabel("Snow Egg |Cost 800m|")
Eggs:AddLabel("Desert Egg |Cost 300b|")
Eggs:AddLabel("Death Egg |Cost 2t|")
Eggs:AddLabel("Beach Egg |Cost 15t|")
Eggs:AddLabel("Mine Egg |Cost 2qa|")
Eggs:AddLabel("Cloud Egg |Cost 25qa|")

--Telport Shop Buttons

TeleportShop:AddButton({
	Name = "Enchantment",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(37.525421142578125, 12.32656192779541, -578.9048461914062)
  	end    
})

TeleportShop:AddButton({
	Name = "Rainbow",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-188.88351440429688, 16.248445510864258, -562.950439453125)
  	end    
})

TeleportShop:AddButton({
	Name = "Shiny",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-234.0636444091797, 12.826586723327637, -552.0304565429688)
  	end    
})

--Teleport Island Buttons

Teleport:AddButton({
	Name = "Spawn Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.83816528320312, 16.426589965820312, -481.85430908203125)
  	end    
})

Teleport:AddButton({
	Name = "Forest Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-164.8086395263672, 977.0913696289062, -398.6109924316406)
  	end    
})

Teleport:AddButton({
	Name = "Flower Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-179.51564025878906, 1514.326171875, -682.4987182617188)
  	end    
})

Teleport:AddButton({
	Name = "Swamp Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264.35888671875, 2113.266845703125, -694.6613159179688)
  	end    
})

Teleport:AddButton({
	Name = "Snow Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-205.3133544921875, 2934.126220703125, -470.446044921875)
  	end    
})

Teleport:AddButton({
	Name = "Desert Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-166.2852020263672, 4225.22412109375, -779.1531372070312)
  	end    
})

Teleport:AddButton({
	Name = "Death Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-277.865966796875, 5415.36328125, -480.2325439453125)
  	end    
})

Teleport:AddButton({
	Name = "Beach Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-140.77609252929688, 6872.16015625, -495.29840087890625)
  	end    
})

Teleport:AddButton({
	Name = "Mines Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-243.2586669921875, 8365.759765625, -483.8897705078125)
  	end    
})

Teleport:AddButton({
	Name = "Cloud Island",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-253.30348205566406, 11250.5029296875, -237.8885955810547)
  	end    
})

setclipboard("https://discord.gg/k9a4zym5uG")

OrionLib:MakeNotification({
    Name = "Join Discord",
    Content = "Join the Discord Copied in your clip Board",
    Image = "rbxassetid://4483345998",
    Time = 5
})

OrionLib:Init()
