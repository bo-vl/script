local function check()
    for i, plr in ipairs(game:GetService("Players"):GetPlayers()) do
        if plr ~= game.Players.LocalPlayer then
            local char = plr.Character or plr.CharacterAdded:Wait()
            local hrp = char.HumanoidRootPart
            for i,plr2 in ipairs(game:GetService("Players"):GetPlayers()) do
                local otherChar = plr2.Character or plr2.CharacterAdded:Wait()
                local otherHrp = otherChar.HumanoidRootPart
                if (hrp.Position - otherHrp.Position).magnitude < 10 then
                  
local lphrp = game.Players.LocalPlayer.Character.HumanoidRootPart
  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(lphrp.CFrame.X,lphrp.CFrame.Y + 10,lphrp.CFrame.Z)
                end
            end
        end
    end
end

while true do
    check()
    wait(1)
end