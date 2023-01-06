local Event = game:GetService("ReplicatedStorage").events.player.char.respawnchar
Event:FireServer()
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local Light = game:GetService("Lighting")

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "Nico's Next Bot",
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

local main = Window:CreateTab("Main", 4483362458)
local tp = Window:CreateTab("Teleport", 4483362458)

local Dropdown = tp:CreateDropdown({
	Name = "Teleport",
	Options = {"Backrooms", "Duct", "Nico's Club", "Secret Room", "Marketplace", "Gate", "Gate2", "Storage", "Farm"},
	CurrentOption = "",
	Flag = "Dropdown1", 
	Callback = function(Option)
        if Option == "Backrooms" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-146, 20, 494))
        elseif Option == "Duct" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(20, 43, 362))
        elseif Option == "Nico's Club" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-307, 55, 338))
        elseif Option == "Secret Room" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-239, 57, 305))
        elseif Option == "Marketplace" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-286, 39, 228))
        elseif Option == "Gate" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(147, 36, 126))
        elseif Option == "Gate2" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-306, 36, 103))
        elseif Option == "Storage" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-315, 36, 145))
        elseif Option == "Farm" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(186.406494140625, 102.73624420166016, 295.02508544921875)
        end
	end,
})

local Dropdown = tp:CreateDropdown({
	Name = "SafeZones",
	Options = {"Safezone1", "Safezone2", "Safezone3", "Safezone4", "Safezone5", "XL Safezone"},
	CurrentOption = "",
	Flag = "Dropdown1", 
	Callback = function(Option)
        if Option== "Safezone1" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-71, 36, 361))
        elseif Option == "Safezone2" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-96, 21, -9))
        elseif Option == "Safezone3" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-45, 52, 334))
        elseif Option == "Safezone4" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-45, 52, 344))
        elseif Option == "Safezone5" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-290, 36, 61))
        elseif Option == "XL Safezone" then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(101, 105, 335))
        end
	end,
})

local Button = main:CreateButton({
	Name = "FullBright",
	Callback = function()
        Light.Ambient = Color3.new(1, 1, 1)
        Light.ColorShift_Bottom = Color3.new(1, 1, 1)
        Light.ColorShift_Top = Color3.new(1, 1, 1)
        game.Lighting.FogEnd = 100000
        game.Lighting.FogStart = 0
        game.Lighting.ClockTime = 14
        game.Lighting.Brightness = 2
        game.Lighting.GlobalShadows = false
	end,
})


local Button = main:CreateButton({
	Name = "Q to teleport",
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
	end,
})

local TargetWalkspeed
local Slider = main:CreateSlider({
	Name = "WalkSpeed",
	Range = {0, 250},
	Increment = 1,
	Suffix = "WalkSpeed",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(Value)
        TargetWalkspeed = Value
	end,
})

local Slider = main:CreateSlider({
	Name = "HipHeight",
	Range = {2, 10},
	Increment = 1,
	Suffix = "HipHeight",
	CurrentValue = 2,
	Flag = "Slider1",
	Callback = function(Value)
        game:GetService("Players").LocalPlayer.Character.Humanoid.HipHeight = Value
	end,
})

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)


