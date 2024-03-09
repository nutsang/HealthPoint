local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character
if not character or character.Parent == nil then
	character = player.CharacterAdded:Wait()
end
local humanoid = character:WaitForChild("Humanoid")
local playerGui = player:WaitForChild("PlayerGui")
local healthPointScreenGui = playerGui:WaitForChild("HealthPointScreenGui")
local background = healthPointScreenGui:WaitForChild("Frame")
local bar = background:WaitForChild("Frame")
bar.Size = UDim2.new(humanoid.Health/humanoid.MaxHealth,0,1, 0)
humanoid.HealthChanged:Connect(function(health)
	bar.Size = UDim2.new(health/humanoid.MaxHealth,0,1, 0)
end)