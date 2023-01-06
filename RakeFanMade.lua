game:GetService("Players").LocalPlayer.PlayerScripts.FallDamage.Disabled = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local LocalPlayer = game:GetService("Players").LocalPlayer
local Light = game:GetService("Lighting")
local esp = Instance.new("Highlight")

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "Rake Fan Made",
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

local TargetWalkspeed
local Slider = Tab:CreateSlider({
	Name = "WalkSpeed Slider",
	Range = {0, 250},
	Increment = 1,
	Suffix = "WalkSpeed",
	CurrentValue = 0,
	Flag = "Slider1",
	Callback = function(Value)
        TargetWalkspeed = Value
	end,
})

local Slider = Tab:CreateSlider({
    Name = "JumpPower",
    Range = {40, 100},
    Increment = 1,
    Suffix = "JumpPower",
    CurrentValue = 40,
    Flag = "Slider1",
    Callback = function(Value)
        LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

local Button = Tab:CreateButton({
	Name = "Fullbright",
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

local Button = Tab:CreateButton({
	Name = "Rake Esp",
	Callback = function()
        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
            if v.Name == "Rake" then
                esp.Parent = v
                esp.Adornee = v
            end
        end
	end,
})

local Button = Tab:CreateButton({
    Name = "Teleport to Flare",
    Callback = function()
        for i,v in pairs(game:GetService("Workspace").FlareGuns:GetDescendants()) do
            if v.Name == "Flare" then
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            end
        end
    end,
})



game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/250)
        end
    end)
end)