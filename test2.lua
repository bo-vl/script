game.Players.LocalPlayer.CharacterAdded:Wait() -- Wait for till the character gets added
local CanChange = true -- This will determine when the script can check that the player is able to teleport when the he is close to the bot (Made this to prevent loops)
local bothrp = game.Workspace.Engineer.HumanoidRootPart -- The bot HumanoidRootPart
local lphrp = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") -- Local player HumanoidRootPart

local function notver() -- notver Function
	if (bothrp.Position - lphrp.Position).Magnitude <= 15 then -- If the distance between the bot HumanoidRootPart and the Local player HumanoidRootPart is less then 15 do an action
		if CanChange == true then -- Check if he is able to do the action (Made this to prevent loops)
			lphrp.CFrame = CFrame.new(lphrp.CFrame.X, lphrp.CFrame.Y + 16, lphrp.CFrame.Z) -- Adds 16 studs to the player Y
			CanChange = false -- Delete this if you want to delete the loop prevention (Made this to prevent loops)
		end -- "If CanChange == true then" End
	end -- "if (bothrp.Position - lphrp.Position).Magnitude <= 15 then" End
end -- "local function notver()" End

local function canchangefalse() -- canchangefalse Function
	if (bothrp.Position - lphrp.Position).Magnitude >= 15 then -- Check if distance between the bot HumanoidRootPart and the Local player HumanoidRootPart > 15 (Made this to prevent loops) (Delete this if you want to delete the loop prevention)
		CanChange = true -- Makes CanChange a true variable (Made this to prevent loops) (Delete this if you want to delete the loop prevention)
	end -- "if (bothrp.Position - lphrp.Position).Magnitude >= 15 then" End
end -- "local function canchangefalse()" End

while true do -- While true loop
	if CanChange == true then -- Check if he is able to do the action (Made this to prevent loops)
		notver() -- Executes notver Function
		task.wait(math.huge / math.huge) -- Wait for Infinite divided by Infinite seconds to prevent from crashes
	else -- CanChange = false
		canchangefalse() -- Executes canchangefalse Function
		task.wait(math.huge / math.huge) -- Wait for Infinite divided by Infinite seconds to prevent from crashes
	end -- "if CanChange == true then"
end -- "while true do" End
