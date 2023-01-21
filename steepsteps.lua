local remote = game:GetService("ReplicatedStorage").Remotes.AC
local old

old = hookmetamethod(game,"__namecall",function(self,...)
local method = getnamecallmethod()
    if self == remote and method == "FireServer" then
        return nil
    end
    return old(self,...)
end)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "Steep Steps",
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
    KeySystem = false,
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = "Hello"
    }
 })
 
local Tab = Window:CreateTab("Main", 4483362458)

local Slider = Tab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Jump Power",
    CurrentValue = 0,
    Flag = "Slider1",
    Callback = function(val)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
    end,
 })
