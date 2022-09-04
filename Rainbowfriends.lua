local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Hub |Rainbow friends|", HidePremium = false,IntroText = "Rainbow friends", SaveConfig = false, ConfigFolder = "OrionTest"})

antideath = true

function functionantideath()
	while antideath == true do
		local near = nil
local part

while true do task.wait()
    local mf = workspace.Monsters
    for i, v in pairs(mf:GetChildren()) do
        for i, v in pairs(v:GetChildren()) do
            local vv = v
            if v.Name == "HumanoidRootPart" then
                if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                    for i, v in pairs(game.Workspace.Map_C1.Lockers:GetChildren()) do
                        for i, v in pairs(v:GetChildren()) do
                            if v.Name == "HitboxWalls" then
                                for i, v in pairs(v:GetChildren()) do
                                    if v.Name == "HitboxWall" then
                                        if near == nil then
                                            near = (vv.Position - v.Position).Magnitude
                                            part = v
                                        else
                                            if (vv.Position - v.Position).Magnitude < near then
                                                near = (vv.Position - v.Position).Magnitude
                                                part = v
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(part.Position.X, part.Position.Y + 6, part.Position.Z)
                    part = nil
                    near = nil
                end
            end
        end
    end
	end
end
end
--tabs

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


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
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

MainTab:AddToggle({
	Name = "Anti Death",
	Default = false,
	Callback = function(Value)
		antideath = Value
		functionantideath()
	end    
})
--sliders

MainTab:AddButton({
	Name = "Item esp",
	Callback = function()
		for i, v in pairs(game.Workspace:GetChildren()) do
			if v:IsA("Model") then
				for i, v in pairs(v:GetChildren()) do
					if v.Name == "TouchTrigger" then
					  local espp = Instance.new("Highlight")
					  espp.Parent = v.Parent
					  espp.FillColor = Color3.new(169, 255, 116)
					  espp.FillTransparencyy = 0.55    
					end
				end
			end 
		end
  	end    
})

MainTab:AddButton({
	Name = "Monest esp!",
	Callback = function()
        local function add()
            for i, v in pairs(workspace:WaitForChild("Monsters"):GetChildren()) do
                if v.Name == "Blue" then
                    local hl = Instance.new("Highlight")
                    hl.Parent = v
                    hl.FillColor = Color3.fromRGB(0, 0, 255)
                end
                if v.Name == "Orange" then
                    local hl = Instance.new("Highlight")
                    hl.Parent = v
                    hl.FillColor = Color3.fromRGB(255, 128, 0)
                end
                if v.Name == "Green" then
                    local hl = Instance.new("Highlight")
                    hl.Parent = v
                    hl.FillColor = Color3.fromRGB(0, 255, 0)
                end
                if v.Name == "Purple" then
                    local hl = Instance.new("Highlight")
                    hl.Parent = v
                    hl.FillColor = Color3.fromRGB(125, 0, 125)
                end
            end
        end
        
        local function remove()
            for i, v in pairs(workspace:WaitForChild("Monsters"):GetChildren()) do
                for i, v in pairs(v:GetChildren()) do
                    if v:IsA("Highlight") then
                        v:Destroy()
                    end
                end
            end
        end
        
        workspace:WaitForChild("Monsters").DescendantAdded:Connect(function()
            remove()
            add()
        end)
  	end    
})

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