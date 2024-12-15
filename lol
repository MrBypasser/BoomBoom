-- Ensure this script runs on the player who activates it

local player = game.Players.LocalPlayer

-- Send the notification
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Troll Alert!",
    Text = "You have been trolled!1!11!1!!",
    Icon = "",
    Duration = 5, -- Notification duration in seconds
})

-- Wait for 10 seconds before detonating
wait(10)

-- Detonate the player (explosion)
if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
    local explosion = Instance.new("Explosion")
    explosion.Position = player.Character.HumanoidRootPart.Position
    explosion.BlastRadius = 10  -- Adjust blast radius as needed
    explosion.BlastPressure = 100000  -- Adjust blast pressure as needed
    explosion.Parent = game.Workspace
end
