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

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "Makking Scam Calls",
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
local Tab = Window:CreateTab("Auto Farm", 11866433904)

getgenv().AutoFarm = false
getgenv().FasterScamming = false
getgenv().TransferSpeed = false
getgenv().ScamValue = false

local TransferSpeed = game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value
local fasterscamming = game:GetService("Players").LocalPlayer.Data.ScamSpeedLevel.Value
local transferspeed = game:GetService("Players").LocalPlayer.Data.TransferSpeedLevel.Value
local scamvalue = game:GetService("Players").LocalPlayer.Data.ScamValueLevel.Value

task.spawn(function()
   while task.wait(4) do
      if FasterScamming == true then
         local ohString1 = "ScamSpeed"
         local ohNumber2 = (fasterscamming)
         game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(ohString1, ohNumber2)
      end
   end
end)

task.spawn(function()
   while task.wait(4) do
      if TransferSpeed == true then
         local ohString1 = "TransferSpeed"
         local ohNumber2 = (transferspeed)
         game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(ohString1, ohNumber2)
      end
   end
end)

task.spawn(function()
   while task.wait(4) do
      if ScamValue == true then
         local ohString1 = "ScamValue"
         local ohNumber2 = (scamvalue)
         game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(ohString1, ohNumber2)
      end
   end
end)


task.spawn(function()
	while task.wait(4.5) do
		if getgenv().AutoFarm == true then
            local number = game:GetService("Players").LocalPlayer.GeneratedNumber.Value
            local ohNumber1 = (number)
            game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(ohNumber1)

            wait(4.4)
            if number == number then
               Rayfield:Notify({
                  Title = "Generated Number",
                  Content = "Generated Number: " .. number,
                  Duration = 6.5,
                  Image = 11866433904,
               })
            elseif number ~= number then
               print("same number")
               
            end

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

local Label = Tab:CreateLabel("Upgrade")

local Toggle = Tab:CreateToggle({
   Name = "Faster Scamming",
   Info = "Auto buys the upgrade called 'Faster Scamming'",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      FasterScamming = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Transfer Speed",
   Info = "Auto buys the upgrade called 'Transfer Speed'",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      TransferSpeed = Value
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Scam Value",
   Info = "Auto buys the upgrade called 'Scam Value'",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(Value)
      ScamValue = Value
   end,
})

local Label = Tab:CreateLabel("Other")
local Toggle = Tab:CreateToggle({
   Name = "Turn on Sprint",
   Info = "Disables sprinting buy prompt",
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
