local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
s = game:GetService("Players").LocalPlayer.Backpack.Launcher.Stats
rs = require(s)

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "Destriuction Simulator",
	LoadingTitle = "Hydra Network",
	LoadingSubtitle = "by hydra#8270",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil,
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = true,
        	Invite = "YvwEyH2W6t",
        	RememberJoins = true 
        },
	KeySystem = true,
	KeySettings = {
		Title = "Hydra Network",
		Subtitle = "Key System",
		Note = "Key link copied in clipboard!",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = true,
		Key = "https://pastebin.com/raw/rfFkzXWN"
	}
})


local Tab = Window:CreateTab("Main")
local Tab1 = Window:CreateTab("Advanced modding")

getgenv().AutoSell = false

task.spawn(function()
    while task.wait(4) do
       if AutoSell == true then
            game:GetService("ReplicatedStorage").Remotes.sellBricks:FireServer()
        end
    end
end)

local Button = Tab:CreateButton({
   Name = "Mod Weapon",
   Info = "Modifies your weapon (dont hold to weapon to use it)",
   Interact = 'Mod Weapon now!',
   Callback = function()
        rs.Cooldown = 0
        rs.RocketSpeed = 100
        rs.BurstWait = 0
        rs.BlastRadius = 10
        rs.ShotgunSpread = 10
        rs.BlastForce = 1000
        rs.Burst = 10
        rs.ShotgunAmount = 10
        rs.BurstWait = 0
   end,
})

local Button = Tab:CreateButton({
    Name = "Free Levels and Coins",
    Info = "Gives you 10 levels and 10m coins",
    Interact = 'Gain money and lvls now!',
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Levels", 480, 10)
        game:GetService("ReplicatedStorage").Remotes.generateBoost:FireServer("Coins", 480, 10000000)
    end,
 })
 
local Toggle = Tab:CreateToggle({
   Name = "Auto-Sell",
   Info = "Auto sells your items",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        AutoSell = Value
   end,
})

local Slider= Tab:CreateSlider({
    Name = "Walk-Speed",
    Info = "Changes your walkspeed",
    Range = {0, 250},
    Increment = 1,
    Suffix = "Amount",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

local Slider= Tab:CreateSlider({
    Name = "Jump-Power",
    Info = "Changes your JumpPower",
    Range = {0, 250},
    Increment = 1,
    Suffix = "Amount",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.JumpHeight = Value
    end,
})


local Label = Tab1:CreateLabel("Some Things might lag your game!")

local Slider1 = Tab1:CreateSlider({
   Name = "Cooldown",
   Info = "Changes the cooldown of your weapon",
   Range = {0, 10},
   Increment = 1,
   Suffix = "CoolDown",
   CurrentValue = 10,
   Flag = "Slider1", 
   Callback = function(Value)
        rs.Cooldown = Value
   end,
})

local Slider2 = Tab1:CreateSlider({
    Name = "BurstWait",
    Info = "Changes the BurstWait of your weapon",
    Range = {0, 10},
    Increment = 1,
    Suffix = "BurstWait",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.BurstWait = Value
    end,
})

local Slider3 = Tab1:CreateSlider({
    Name = "RocketSpeed",
    Info = "Changes the RockSpeed of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.RocketSpeed = Value
    end,
})

local Slider4 = Tab1:CreateSlider({
    Name = "BlastRadius",
    Info = "Changes the BlastRadius of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Radius",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.BlastRadius = Value
    end,
})

local Slider5 = Tab1:CreateSlider({
    Name = "ShotgunSpread",
    Info = "Changes the ShotgunSpread of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Spread",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.ShotgunSpread = Value
    end,
})

local Slider6 = Tab1:CreateSlider({
    Name = "BlastForce",
    Info = "Changes the BlastForce of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Force",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.BlastForce = Value
    end,
})

local Slider7 = Tab1:CreateSlider({
    Name = "Burst",
    Info = "Changes the Burst of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Burst",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.Burst = Value
    end,
})

local Slider8 = Tab1:CreateSlider({
    Name = "ShotgunAmount",
    Info = "Changes the ShotgunAmount of your weapon",
    Range = {0, 1000},
    Increment = 1,
    Suffix = "Amount",
    CurrentValue = 10,
    Flag = "Slider1", 
    Callback = function(Value)
        rs.ShotgunAmount = Value
    end,
})


