local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub|Tapping Simulator!|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

--Eggs Values

_G.StarterEgg = true
_G.WoodEgg = true
_G.JungleEgg = true 
_G.ForestEgg = true
_G.BeeEgg = true
_G.SwampEgg = true
_G.SnowEgg = true
_G.DesertEgg = true
_G.DeathEgg = true
_G.BeachEgg = true
_G.MineEgg = true
_G.CloudEgg = true

--auto Farm Values

_G.autoclick = true

--rebirth values

_G.autorebirth1 = true
_G.autorebirth5 = true
_G.autorebirth10 = true
_G.autorebirth20 = true
_G.autorebirth100 = true
_G.autorebirth500 = true
_G.autorebirth2000 = true
_G.autorebirth4500 = true
_G.autorebirth8000 = true
_G.autorebirth12500 = true
_G.autorebirth18000 = true
_G.autorebirth24500 = true
_G.autorebirth32000 = true

--Eggs Functions

function StarterEgg()
    while _G.StarterEgg == true do
        local args = {
            [1] = {},
            [2] = "Starter",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function WoodEgg()
    while _G.WoodEgg == true do
        local args = {
            [1] = {},
            [2] = "Wood Egg",
            [3] = 1
        } 
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function JungleEgg()
    while _G.JungleEgg == true do
        local args = {
            [1] = {},
            [2] = "Jungle Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait()
    end
end

function ForestEgg()
    while _G.ForestEgg == true do
        local args = {
            [1] = {},
            [2] = "Forest Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function BeeEgg()
    while _G.BeeEgg == true do
        local args = {
            [1] = {},
            [2] = "Bee Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function SwampEgg()
    while _G.SwampEgg == true do
        local args = {
            [1] = {},
            [2] = "Swamp Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1) 
    end
end

function SnowEgg()
    while _G.SnowEgg == true do
        local args = {
            [1] = {},
            [2] = "Snow Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1) 
    end
end

function DesertEgg()
    while _G.DesertEgg == true do
        local args = {
            [1] = {},
            [2] = "Desert Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1) 
    end
end

function DeathEgg()
    while _G.DeathEgg == true do
        local args = {
            [1] = {},
            [2] = "Death Egg",
            [3] = 0
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1) 
    end
end

function BeachEgg()
    while _G.BeachEgg == true do
        local args = {
            [1] = {},
            [2] = "Beach Egg",
            [3] = 0
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1) 
    end
end

function MineEgg()
    while _G.MineEgg == true do
        local args = {
            [1] = {},
            [2] = "Mine Egg",
            [3] = 1
}
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function CloudEgg()
    while _G.CLoudEgg == true do
        local args = {
            [1] = {},
            [2] = "Cloud Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

--Auto Rebirth functions

function autorebirth32000()
    while _G.autorebirth32000 == true do
        local args = {
            [1] = 32000
        }
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth24500()
    while _G.autorebirth24500 == true do
        local args = {
            [1] = 24500
        }
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth180002()
    while _G.autorebirth18000 == true do
        local args = {
            [1] = 18000}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth125002()
    while _G.autorebirth12500 == true do
        local args = {
            [1] = 12500}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth80002()
    while _G.autorebirth8000 == true do
        local args = {
            [1] = 8000}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth45002()
    while _G.autorebirth4500 == true do
        local args = {
            [1] = 4500}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth20002()
    while _G.autorebirth2000 == true do
        local args = {
            [1] = 2000}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth5002()
    while _G.autorebirth500 == true do
        local args = {
            [1] = 500}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth1002()
    while _G.autorebirth100 == true do
        local args = {
            [1] = 100}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth202()
    while _G.autorebirth20 == true do
        local args = {
            [1] = 20}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth102()
    while _G.autorebirth10 == true do
        local args = {
            [1] = 10}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth52()
    while _G.autorebirth5 == true do
        local args = {
            [1] = 5}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

function autorebirth12()
    while  _G.autorebirth1 == true do
        local args = {[1] = 1}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait(1)
    end
end

--AutoFarm

function autoclick()
    while _G.autoclick == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Events.GetAutoReconnectEnabled:InvokeServer()
        Wait()
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

--toggles AutoFarm

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

--toggles Auto Rebirth

local Autorebirth = farmsy:AddSection({
	Name = "Auto Rebirth"
})

farmsy:AddToggle({
    Name = "auto rebirth |1|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth1 = Value
        autorebirth12()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |5|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth5 = Value
        autorebirth52()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |10|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth10 = Value
        autorebirth102()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |20|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth20 = Value
        autorebirth202()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |100|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth100 = Value
        autorebirth1002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |500|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth500 = Value
        autorebirth5002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |2000|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth2000 = Value
        autorebirth20002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |4500|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth4500 = Value
        autorebirth45002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |8000|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth8000 = Value
        autorebirth80002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |12500|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth12500 = Value
        autorebirth125002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |18000|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth18000 = Value
        autorebirth180002()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |24500|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth24500 = Value
        autorebirth24500()
    end    
})

farmsy:AddToggle({
    Name = "auto rebirth |32000|",
    Default = false,
    Callback = function(Value)
        _G.autorebirth32000 = Value
        autorebirth32000()
    end    
})

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

--Eggs Buttons/Toggles

local Starter = Eggs:AddSection({
	Name = "Starter Island Eggs"
})

Eggs:AddButton({
	Name = "Starter |Cost 100|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Starter",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Starter Egg",
	Default = false,
	Callback = function(Value)
		_G.StarterEgg = Value
        StarterEgg()
	end    
})

Eggs:AddButton({
	Name = "Wood Egg |Cost 2500|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Wood Egg",
            [3] = 1
        } 
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))        
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Wood Egg",
	Default = false,
	Callback = function(Value)
		_G.WoodEgg = Value
        WoodEgg()
	end    
})

Eggs:AddButton({
	Name = "Jungle Egg |Cost 150k|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Jungle Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Jungle Egg",
	Default = false,
	Callback = function(Value)
		_G.JungleEgg = Value
        JungleEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Forest Island Eggs"
})

Eggs:AddButton({
	Name = "Forest Egg |Cost 1,5m|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Forest Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Forest Egg",
	Default = false,
	Callback = function(Value)
		_G.ForestEgg = Value
        ForestEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Flower Island Eggs"
})

Eggs:AddButton({
	Name = "Bee Egg |Cost 5m|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Bee Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Bee Egg",
	Default = false,
	Callback = function(Value)
		_G.BeeEgg = Value
        BeeEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Swamp Island Eggs"
})

Eggs:AddButton({
	Name = "Swamp Egg|Cost 8m|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Swamp Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Swamp Egg",
	Default = false,
	Callback = function(Value)
		_G.SwampEgg = Value
        SwampEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Snow Island Eggs"
})

Eggs:AddButton({
	Name = "Snow Egg|Cost 800m|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Snow Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Snow Egg",
	Default = false,
	Callback = function(Value)
		_G.SnowEgg = Value
        SnowEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Desert Island Eggs"
})

Eggs:AddButton({
	Name = "Desert Egg|Cost 300b|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Desert Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Desert Egg",
	Default = false,
	Callback = function(Value)
		_G.SnowEgg = Value
        SnowEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Death Island Eggs"
})

Eggs:AddButton({
	Name = "Death Egg|Cost 2t|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Death Egg",
            [3] = 0
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Death Egg",
	Default = false,
	Callback = function(Value)
		_G.DeathEgg = Value
        DeathEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Beach Island Eggs"
})

Eggs:AddButton({
	Name = "Beach Egg|Cost 15t|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Beach Egg",
            [3] = 0
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Beach Egg",
	Default = false,
	Callback = function(Value)
		_G.BeachEgg = Value
        BeachEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Mines Island Eggs"
})

Eggs:AddButton({
	Name = "Mine Egg|Cost 2Qa|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "mine Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Beach Egg",
	Default = false,
	Callback = function(Value)
		_G.MineEgg = Value
        MineEgg()
	end    
})

local Starter = Eggs:AddSection({
	Name = "Cloud Island Eggs"
})

Eggs:AddButton({
	Name = "Cloud Egg|Cost 5Qa|",
	Callback = function()
        local args = {
            [1] = {},
            [2] = "Cloud Egg",
            [3] = 1
        }
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
  	end    
})

Eggs:AddToggle({
	Name = "Loop Buy Beach Egg",
	Default = false,
	Callback = function(Value)
		_G.CLoudEgg = Value
        CloudEgg()
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
