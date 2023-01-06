local localname = game:GetService("Players").LocalPlayer.Name
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

getgenv().Heard_gun = false
getgenv().Heard_dril = false

task.spawn(function()
    while wait() do
        if Heard_gun == true then
            for i,v in pairs(game:GetService("Workspace").Citizens:GetDescendants()) do
                if v.Name == "HeardGun" and v.ClassName == "BoolValue" then
                    v.Value = false
                end
            end            
        end
    end
end)

task.spawn(function()
    while wait() do
        if Heard_gun == true then
            for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                if v.Name == "HeardGun" and v.ClassName == "BoolValue" then
                    v.Value = false
                end
            end        
        end
    end
end)

task.spawn(function()
    while wait() do
        if Heard_dril == true then
            for i,v in pairs(game:GetService("Workspace").Citizens:GetDescendants()) do
                if v.Name == "HeardDrill" and v.ClassName == "BoolValue" then
                    v.Value = false
                end
            end            
        end
    end
end)

task.spawn(function()
    while wait() do
        if Heard_dril == true then
            for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
                if v.Name == "HeardDrill" and v.ClassName == "BoolValue" then
                    v.Value = false
                end
            end        
        end
    end
end)

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "Notoriety",
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


local Slider = Tab:CreateSlider({
	Name = "SpinSpeed",
	Range = {18, 100},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 1,
	Flag = "Slider1",
	Callback = function(Value)
		game:GetService("Workspace").Criminals.LocalPlayer.BaseSpeed.Value = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Disable Gun Sound Detection",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        Heard_gun = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Disable Drill Sound Detection",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        Heard_dril = Value
	end,
})

local Button = Tab:CreateButton({
	Name = "Remove Glass",
	Callback = function()
		for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v.Name == "Glass" then
                v:Destroy()
            end
        end
	end,
})

local Button = Tab:CreateButton({
	Name = "Inf Stamina",
	Callback = function()
        game:GetService("Workspace").Criminals[localname].Stamina.Value = math.huge
	end,
})

local Button = Tab:CreateButton({
	Name = "Mod Weapons",
	Callback = function()
        for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
            if v.Name == "Data" then
                rs = require(v)
                rs.Damage = math.huge
                rs.AmmoMax = math.huge
                rs.MagazineSize = math.huge
                rs.Accuracy = 100
                rs.AimSpeed = math.huge
                rs.Knockback = 0
                rs.ShakeRoughness = 0
            end
        end
	end,
})

