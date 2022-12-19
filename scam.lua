repeat wait() until game:IsLoaded()

for i,v in pairs(game:GetService("Workspace"):GetDescendants()) do
    if v.Name == "Claim" and v.ClassName == "Part" and v.Transparency == 0 then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
    end
end

game:GetService("Players").LocalPlayer.PlayerGui.Notifications:Destroy()
game:GetService("Players").LocalPlayer.PlayerGui.PCGUI.Frame.Upgrades.Update:Fire()
game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
wait(2)

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()

local Window = Rayfield:CreateWindow({
    Name = "making scam calls to save your best friend tycoon",
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
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false, 
       Key = "Hello"
    }
 })

local Tab = Window:CreateTab("Auto Farm", 4483362458)

getgenv().AutoFarm = false

task.spawn(function()
	while task.wait() do
		if getgenv().AutoFarm == true then
            local number = game:GetService("Players").LocalPlayer.GeneratedNumber.Value
            local ohNumber1 = (number)
            game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(ohNumber1)
        end
	end
end)

local Toggle = Tab:CreateToggle({
   Name = "Scam call Auto Farm",
   Info = "Does the scam call for you",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
        AutoFarm = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Turn on Sprint",
   Info = "Disables sprinting buy promt",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      if Value == true then
         game:GetService("Players").LocalPlayer.Data.Sprint.Value = 1
      else
         game:GetService("Players").LocalPlayer.Data.Sprint.Value = 0
      end
   end,
})

local Button = Tab:CreateButton({
   Name = "Inf Double Money",
   Info = "Just for the funny (probably dont even work)",
   Interact = 'Changable',
   Callback = function()
      game:GetService("Players").LocalPlayer.Data.DoubleMoney.Value = math.huge
   end,
})



