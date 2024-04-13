local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local function setupPlayerParticles(player)
	player.CharacterAdded:Connect(function(character)
		local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
		local playerParticleAttachment = Instance.new("Attachment")
		playerParticleAttachment.Name = "ParticleAttachment"
		playerParticleAttachment.Parent = humanoidRootPart

		for _, emitter in ReplicatedStorage.Particles:GetChildren() do
			emitter:Clone().Parent = playerParticleAttachment
			print("Emitter added for " .. player.Name)

		end
	end)
end

for _, player in Players:GetPlayers() do
	setupPlayerParticles(player)
end

Players.PlayerAdded:Connect(setupPlayerParticles)
