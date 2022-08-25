local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub|Speed Run Simulator|", HidePremium = false, IntroText = "Speed Run Simulator", SaveConfig = false, ConfigFolder = "OrionTest"})

--Values

_G.AutoSpeed = true
_G.AutoRebirth = true
_G.AutoLoop = true
_G.EggSelect = "EggOne"
_G.AutoHatch = true

--functions

function AutoHatch()
    while _G.AutoHatch == true do
        local args = {
            [1] = (_G.EggSelect),
            [2] = false
        }
        game:GetService("ReplicatedStorage").Remotes.CanBuyEgg:InvokeServer(unpack(args))
        wait()
    end
end

function AutoLoop()
    while _G.AutoLoop == true do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9806.25684, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9881.34668, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7492.07178, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7416.98096, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8671.07227, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7712.61182, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6431.24023, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3114.52759, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3335.06763, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3039.43701, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5691.48145, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8595.98047, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4342.5415, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4563.08057, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4267.45117, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6651.7793, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6356.14941, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5395.85156, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5470.94238, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1241.2135, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1316.30371, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1536.84363, 237.350159, -501.870941, 1, 0, 0, 0, 0, -1, 0, 1, 0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2119.7793, 220.202744, -368.565826, -1, 0, -0, 0, 0, -1, 0, -1, -0)
        wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2194.86963, 225.628845, -599.266602, 8.10623169e-05, 1, 8.10623169e-05, 8.10623169e-05, 8.10623169e-05, -1, -1, 8.10623169e-05, -8.10623169e-05)
        wait()
    end
end

function AutoRebirth()
    while _G.AutoRebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        wait()
    end
end

function AutoSpeed()
    while _G.AutoSpeed == true do
        game:GetService("ReplicatedStorage").Remotes.AddSpeed:FireServer()
        wait()
    end
end

--tabs

local AutoFarm = Window:MakeTab({
	Name = "AutoFarm",
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

--toggles/buttons/dropdowns

AutoFarm:AddToggle({
	Name = "Auto speed",
	Default = false,
	Callback = function(Value)
        _G.AutoSpeed = Value
        AutoSpeed()
	end    
})

AutoFarm:AddToggle({
	Name = "Rebirth",
	Default = false,
	Callback = function(Value)
        _G.AutoRebirth = Value
        AutoRebirth()
	end    
})

AutoFarm:AddToggle({
	Name = "Auto Hoops",
	Default = false,
	Callback = function(Value)
        _G.AutoLoop = Value
        AutoLoop()
	end    
})

Eggs:AddDropdown({
	Name = "Egg Select",
	Default = "EggOne",
	Options = {"EggOne", "EggTwo", "EggThree", "EggFour", "EggSix", "EggSeven", "EggEight", "Eggnine", "EggTen", "EggTwelve", "EggThirteen"},
	Callback = function(Value)
		_G.EggSelect = Value
        print(_G.EggSelect)
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

Eggs:AddLabel("Egg one |500 Spd 0 Rebirth Required")
Eggs:AddLabel("Egg Two |3k Spd 1 Rebirth Required")
Eggs:AddLabel("Egg Three |5k Spd 2 Rebirth Required")
Eggs:AddLabel("Egg Four |15k Spd 3 Rebirth Required")
Eggs:AddLabel("Egg Five |30k Spd 5 Rebirth Required")
Eggs:AddLabel("Egg Six |50k Spd 7 Rebirth Required")
Eggs:AddLabel("Egg Seven |75k Spd 11 Rebirth Required")
Eggs:AddLabel("Egg Eight |115k Spd 13 Rebirth Required")
Eggs:AddLabel("Egg nine |250k Spd 17 Rebirth Required")
Eggs:AddLabel("Egg Ten |350k Spd 20 Rebirth Required")
Eggs:AddLabel("Egg Eleven |500k Spd 25 Rebirth Required")
Eggs:AddLabel("Egg twelve |800k Spd 30 Rebirth Required")

Teleport:AddButton({
	Name = "Teleport Spawn",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1372.268798828125, 197.698974609375, -486.1121520996094)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Desert",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2275.41064453125, 197.13546752929688, -660.121826171875)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Ice",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3199.195556640625, 197.13546752929688, -663.2059326171875)
  	end    
})

Teleport:AddButton({
	Name = "Teleport Lava",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4420.71923828125, 197.13546752929688, -662.0763549804688)
  	end    
})  

Teleport:AddButton({
	Name = "Teleport Graveyard",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5556.9658203125, 197.2568359375, -669.323974609375)
  	end    
})  

Teleport:AddButton({
	Name = "Teleport Heaven",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6519.80322265625, 197.2806396484375, -666.3008422851562)
  	end    
})  

Teleport:AddButton({
	Name = "Teleport CandyLand",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(7578.97021484375, 197.13546752929688, -668.4412841796875)
  	end    
})  

Teleport:AddButton({
	Name = "Teleport Moon",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8755.4892578125, 197.13546752929688, -669.6151733398438)
  	end    
})  

Teleport:AddButton({
	Name = "Teleport Ocean Sea",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9972.171875, 197.2806396484375, -668.3043823242188)
  	end    
}) 

Teleport:AddButton({
	Name = "Teleport Adventure",
	Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(11110.8740234375, 197.3053741455078, -667.2660522460938)
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