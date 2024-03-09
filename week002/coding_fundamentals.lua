-- create an empty world, add a part
-- create a script under ServerScriptService

-- an Object variable
local part = workspace.Part

-- set built-in property
part.Color = Color3.fromRGB(0, 120, 120)

-- set attribute
part:SetAttribute("Owner", "Matthew")
--part:SetAttribute("Owner", "Michael")

-- a boolean variable
local isMatthew = part:GetAttribute("Owner") == "Matthew" 

-- if condition
if isMatthew then
	-- print()
	print("Yes, it's Matthew!")
	part.Color = Color3.fromRGB(255, 255, 0)
end