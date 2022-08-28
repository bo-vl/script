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
	Name = "Get all fuse",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do

			if v.Name == "Fuse1" or v.Name == "Fuse2" or v.Name == "Fuse3" or v.Name == "Fuse4" or v.Name == "Fuse5" or v.Name == "Fuse6" or v.Name == "Fuse7" or v.Name == "Fuse8" or v.Name == "Fuse9" or v.Name == "Fuse10" or v.Name == "Fuse11" or v.Name == "Fuse12" or v.Name == "Fuse13" or v.Name == "Fuse14" then
				for i, v in pairs(v:GetChildren()) do
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
					task.wait(1)
				end
			end
		end
  	end    
})

MainTab:AddButton({
	Name = "Get all Battery",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v.Name == "Battery" then
			 for i, v in pairs(v:GetChildren()) do
			   if v.Name == "TouchTrigger" then
				  game.Player.LocalPlayer.Character.HumanoidRootPart.CFrame == CFrame.new(v.Position)
				  wait(1)
				end
			  end
			end
		  end
  	end    
})

MainTab:AddButton({
	Name = "Get all Cubes",
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
	Name = "Get all Food",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v.Name == "FoodGreen" or v.Name == "FoodOrange" or v.Name == "FoodPink" then
				for i, v in pairs(v:GetChildren()) do
					if v:IsA("Part") then
						game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position.X, v.Position.Y, v.Position.Z)
					end
				end
			end
			wait(2)
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