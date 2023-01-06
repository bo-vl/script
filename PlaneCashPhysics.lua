local Time = os.clock()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua", true))()
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

getgenv().money = false

task.spawn(function()
    while task.wait() do
        if getgenv().money == true then
            game:GetService("ReplicatedStorage").GetCash:FireServer()
        end
    end
end)

setclipboard("https://link-hub.net/488828/key-for-hydra-network")

local Window = Rayfield:CreateWindow({
	Name = "PLane Cash Physics",
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

local Tab = Window:CreateTab("Main", 4483362458)

local Toggle = Tab:CreateToggle({
	Name = "Fast money(may cause lag)",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
        money = Value
	end,
})

local notif = Notification.new("success", "Success", "HydraNetworkv2 took " .. math.round(os.clock() - Time) .. "s to load!")
notif:deleteTimeout(3)
