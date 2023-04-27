getgenv().spinSpeed = 20
getgenv().bhop = false
getgenv().bhopwait = 1
local lplr = game:GetService("Players").LocalPlayer
local speedSlider = {Value = 100}
local speed = {Enabled = false}
local jumpPower = {Enabled = false}
local jumpPowerSlider = {Value = 100}
local oldJp
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "Universal",
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

local Toggle = Tab:CreateToggle({
    Name = "Toggle walkspeed",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(callback)
        speed.Enabled = callback
        if callback then
            coroutine.wrap(function()
                repeat
                    if lplr and lplr.Character and lplr.Character:FindFirstChild("HumanoidRootPart") then
                        pcall(function()
                            local moveDir = lplr.Character.Humanoid.MoveDirection*speedSlider.Value
                            lplr.Character.HumanoidRootPart.AssemblyLinearVelocity = Vector3.new(moveDir.X, lplr.Character.HumanoidRootPart.AssemblyLinearVelocity.Y, moveDir.Z)
                        end)
                    end
                    task.wait()
                until speed.Enabled == false
            end)()
        end
    end,
 })

local Slider = Tab:CreateSlider({
    Name = "walkspeed",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 5,
    Flag = "Slider1",
    Callback = function(callback)
        speedSlider.Value = callback
    end,
 })


 local Toggle = Tab:CreateToggle({
    Name = "Toggle jump power",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(callback)
        jumpPower.Enabled = callback
        if callback then
            if lplr.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                oldJp = lplr.Character:FindFirstChildOfClass('Humanoid').JumpPower
                lplr.Character:FindFirstChildOfClass('Humanoid').JumpPower = jumpPowerSlider.Value
            else
                oldJp = lplr.Character:FindFirstChildOfClass('Humanoid').JumpHeight
                lplr.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = jumpPowerSlider.Value
            end
        else
            if oldJp then
                if lplr.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                    lplr.Character:FindFirstChildOfClass('Humanoid').JumpPower = oldJp
                else
                    lplr.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = oldJp
                end
            end
        end
    end,
 })

 local Slider = Tab:CreateSlider({
    Name = "JumpPower",
    Range = {0, 100},
    Increment = 1,
    Suffix = "Jump Power",
    CurrentValue = 5,
    Flag = "Slider1",
    Callback = function(val)
        jumpPowerSlider.Value = val
        if jumpPower.Enabled then
            if lplr.Character:FindFirstChildOfClass('Humanoid').UseJumpPower then
                lplr.Character:FindFirstChildOfClass('Humanoid').JumpPower = val
            else
                lplr.Character:FindFirstChildOfClass('Humanoid').JumpHeight  = val
            end
        end
    end,
 })


 task.spawn(function()
	while task.wait(bhopwait) do
		if bhop then
			humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
		end
	end
end)

function spin()
	local Spin = Instance.new("BodyAngularVelocity")
	Spin.Name = "Spinning"
	Spin.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
	Spin.MaxTorque = Vector3.new(0, math.huge, 0)
	Spin.AngularVelocity = Vector3.new(0,spinSpeed,0)
end


local Toggle = Tab:CreateToggle({
	Name = "Spin-bot",
	CurrentValue = false,
	Flag = "Toggle1",
	Callback = function(Value)
		if Value then
			spin()
		else
			game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Spinning:Destroy()
		end
	end,
})

local Slider = Tab:CreateSlider({
	Name = "SpinSpeed",
	Range = {0, 500},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 1,
	Flag = "Slider1",
	Callback = function(Value)
		spinSpeed = Value
	end,
})
