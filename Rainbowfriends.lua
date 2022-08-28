local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub |Rainbow friends|", HidePremium = false,IntroText = "Rainbow friends", SaveConfig = false, ConfigFolder = "OrionTest"})

--tabs

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--buttons

MainTab:AddButton({
	Name = "Get all Items",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v:IsA("Model") then
				for i, v in pairs(v:GetChildren()) do
					if v.Name == "TouchTrigger" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
						wait(1)
					end
				end
			end
		end
  	end    
})

MainTab:AddButton({
	Name = "Inf Jump",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v:IsA("Model") then
				for i, v in pairs(v:GetChildren()) do
					if v.Name == "TouchTrigger" then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
						wait(1)
					end
				end
			end
		end
  	end    
})

MainTab:AddButton({
	Name = "Inf Jump",
	Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

--sliders

local TargetWalkspeed
MainTab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

--others

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

OrionLib:Init()