local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local lplr = game:GetService("Players").LocalPlayer

local settings = {
    godcar = false,
    inffual = false,
    accelerate = 1,
    maxspeed = 1,
    reversemaxspeed = 1,
    alwayson = false,
}

local Window = Rayfield:CreateWindow({
    Name = "Emergency Hamburg",
    LoadingTitle = "Hydra Network",
    LoadingSubtitle = "by Hydra#8270",
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
	KeySystem = false,
	KeySettings = {
		Title = "Hydra Network",
		Subtitle = "Key System",
		Note = "Key link copied in clipboard!",
		FileName = "SiriusKey",
		SaveKey = false,
		GrabKeyFromSite = true,
		Key = ""
	}
})

task.defer(function()
    while task.wait() do
        if settings.godcar then
            workspace.Vehicles[lplr.Name]:SetAttribute("CurrentHealth", 1)
        end
    end
end)

task.defer(function()
    while task.wait() do
        if settings.inffual then
            workspace.Vehicles[lplr.Name]:SetAttribute("CurrentFuel", 100)
        end
    end
end)

task.defer(function()
    while task.wait() do
        if settings.alwayson then
            workspace.Vehicles[lplr.Name]:SetAttribute("IsOn", true)
        end
    end
end)

local Tab = Window:CreateTab("Main", 4483362458)

local Toggle = Tab:CreateToggle({
    Name = "god car",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        settings.godcar = Value
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "inf fuel",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        settings.inffual = Value
    end,
})


local Slider = Tab:CreateSlider({
    Name = "accelerate value",
    Range = {0, 10000},
    Increment = 1,
    Suffix = "wowie",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
        settings.accelerate = Value
        while task.wait() do
            workspace.Vehicles[lplr.Name]:SetAttribute("MaxAccelerateForce", settings.accelerate)
        end
    end,
})

local Slider = Tab:CreateSlider({
    Name = "Max Speed",
    Range = {0, 10000},
    Increment = 1,
    Suffix = "speed",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
        settings.maxspeed = Value
        while task.wait() do
            workspace.Vehicles[lplr.Name]:SetAttribute("MaxSpeed", settings.maxspeed)
        end
    end,
})

local Slider = Tab:CreateSlider({
    Name = "Reverse Speed",
    Range = {0, 10000},
    Increment = 1,
    Suffix = "speed",
    CurrentValue = 10,
    Flag = "Slider1",
    Callback = function(Value)
        settings.reversemaxspeed = Value
        while task.wait() do
            workspace.Vehicles[lplr.Name]:SetAttribute("ReverseMaxSpeed", settings.reversemaxspeed)
        end
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "is always on (can ride when car is broken)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        settings.alwayson = Value
    end,
})