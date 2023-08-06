 local message = Instance.new("Message", workspace)
        message.Text = "Made By BlueMods / https://dsc.gg/bluemods"
        wait(4.5)
        message:Destroy()

-- Speed & Jump Boost by BlueMods
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100

-- Infinite Jump by BlueMods
local infjmp = true
game:GetService("UserInputService").jumpRequest:Connect(function()
    if infjmp then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass"Humanoid":ChangeState("Jumping")
    end
end)
