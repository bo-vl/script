local plr = game:GetService("Players").LocalPlayer
local RootPart = plr.Character.HumanoidRootPart
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Settings = {
    Cooldown = 0.1,
    AutoPizza = false,
    AutoCriminal = false,
    AutoTimeTrail = false,
}

local Attack = function()
    game:GetService("ReplicatedStorage").Versed.Remotes.M1s:FireServer(math.random(1, 5))
end

task.defer(function()
    while task.wait(Settings.Cooldown) do
        if Settings.AutoPizza then
            fireproximityprompt(workspace.JoesPizza.PizzaPrompt.ProximityPrompt)
            for _,v in pairs(workspace.PizzaNPCS:GetDescendants()) do
                if v.Name == "DeliveryHitbox" then
                    fireproximityprompt(v.ProximityPrompt, 0)
                end
            end
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.AutoTimeTrail then
            for _,v in pairs(workspace.TrialRing.ActualRings:GetDescendants()) do
                if v.Name == "TouchInterest" then
                    firetouchinterest(RootPart, v.Parent, 1)
                end
            end
        end
    end
end)

task.defer(function()
    while task.wait() do
        if Settings.AutoCriminal then
            for _,v in pairs(workspace.Dummys:GetDescendants()) do
                if v.Name == "HumanoidRootPart" then
                    RootPart.CFrame = v.CFrame + Vector3.new(0, 2.5, 0)
                    RootPart.CFrame = RootPart.CFrame * CFrame.Angles(math.rad(180), 0, 0)
                    Attack()
                end
            end
        end
    end
end)

local Window = Rayfield:CreateWindow({
    Name = "InVision's: Web-Verse by hydra.xd",
    LoadingTitle = "InVision's: Web-Verse",
    LoadingSubtitle = "by Hydra.xd",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink",
       RememberJoins = true
    },
    KeySystem = false,
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = {"Hello"}
    }
})

local Tab = Window:CreateTab("Auto Farm", 4483362458)

local Slider = Tab:CreateSlider({
    Name = "Pizza Cooldown",
    Range = {0, 1},
    Increment = .1,
    Suffix = "Seconds",
    CurrentValue = 0.1,
    Flag = "Slider1",
    Callback = function(Value)
        Settings.Cooldown = Value
    end,
})

local Toggle = Tab:CreateToggle({
    Name = "Auto Pizza",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        Settings.AutoPizza = Value
    end,
})

local AutoTimeTrail = Tab:CreateToggle({
    Name = "Auto Time Trail",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        Settings.AutoTimeTrail = Value
    end,
})

local AutoTimeTrail = Tab:CreateToggle({
    Name = "Auto Criminal",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        Settings.AutoCriminal = Value
    end,
})