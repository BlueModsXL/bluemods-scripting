 local message = Instance.new("Message", workspace)
        message.Text = "Made By BlueMods / https://dsc.gg/bluemods"
        wait(4.5)
        message:Destroy()

-- Speed & Jump Boost by BlueMods
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100

pcall(function()
    local lighting = game:GetService("Lighting");
    lighting.Ambient = Color3.fromRGB(255, 255, 255);
    lighting.Brightness = 1;
    lighting.FogEnd = 1e10;
    for i, v in pairs(lighting:GetDescendants()) do
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false;
        end;
    end;
    lighting.Changed:Connect(function()
        lighting.Ambient = Color3.fromRGB(255, 255, 255);
        lighting.Brightness = 1;
        lighting.FogEnd = 1e10;
    end);
    spawn(function()
        local character = game:GetService("Players").LocalPlayer.Character;
        while wait() do
            repeat wait() until character ~= nil;
            if not character.HumanoidRootPart:FindFirstChildWhichIsA("PointLight") then
                local headlight = Instance.new("PointLight", character.HumanoidRootPart);
                headlight.Brightness = 1;
                headlight.Range = 60;
            end;
        end;
    end);
end)

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
 
print('Infinite health active..')
 
Humanoid.MaxHealth = 999999
Humanoid.Health = Humanoid.MaxHealth / 2000
 
Humanoid.HealthChanged:connect(function()
    if Humanoid.Health < 99 then
        Humanoid.Health = Humanoid.MaxHealth
    end
end)
