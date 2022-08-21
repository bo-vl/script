local RushCoroutine = coroutine.create(function()
    workspace.ChildAdded:Connect(function(Instance)
        if Instance.Name == "RushMoving" then
            local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
            local Connect = game:GetService("RunService").Heartbeat:Connect(function()
                game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
            end)
            
            Instance.Destroying:Wait()
            Connect:Disconnect()

            game.Players.LocalPlayer.Character:MoveTo(OldPos)
        end
    elseif Instance.Name == "AmbushMoving" then
        local OldPos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
        local Connect = game:GetService("RunService").Heartbeat:Connect(function()
            game.Players.LocalPlayer.Character:MoveTo(OldPos + Vector3.new(0,20,0))
        end)
        
        Instance.Destroying:Wait()
        Connect:Disconnect()
        
        game.Players.LocalPlayer.Character:MoveTo(OldPos)
    end)
end)

coroutine.resume(RushCoroutine)