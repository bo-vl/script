local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Key System", HidePremium = false, IntroText = "Bo's Script Hub" ,SaveConfig = true})

OrionLib:MakeNotification({
	Name = "Logged In",
	Content = "Welcome to Bo's Script Hub",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.key = "FirstRelease"
_G.KeyInput = "string"

function KeyCheck()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/script.lua")
end

function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end

function Correctkeynot()
    OrionLib:MakeNotification({
        Name = "correct Key",
        Content = "Welcome To Bo's script hub",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

function Wrongkeynot()
    OrionLib:MakeNotification({
        Name = "Incorrect Key",
        Content = "Join the discord to get key(link is copied in your clipboard)",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
end

local Key = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Key:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

Key:AddButton({
	Name = "Check Key",
	Callback = function()
      		if _G.KeyInput == _G.key then
                KeyCheck()
                Correctkeynot()
                Destroy()
            else
                Wrongkeynot()
                setclipboard("https://discord.gg/k9a4zym5uG")
            end 
  	end
})

OrionLib:Init()
