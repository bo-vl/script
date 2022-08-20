local players = game.Players:GetPlayers()

        for i,v in pairs(players) do
            local esp = Instance.new("Highlight")
            esp.Name = v.Name
            esp.FillTransparency = 0.75
            esp.FillColor = Color3.new(255, 0, 0)
            esp.OutlineColor = Color3.new(0, 0, 0)
            esp.OutlineTransparency = 0
            esp.Parent = v.Character
           end
        end