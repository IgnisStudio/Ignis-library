--crack detector area creation gui
local function cracked_gui()
	local screengui = Instance.new("ScreenGui",script.Parent)
	local frame = Instance.new("Frame",screengui)
	frame.Name = "CrackDetected"
	frame.BackgroundColor3 = Color3.fromRGB(255, 0, 4)
	frame.Size = UDim2.new(0.213,0,0.318,0)
	frame.Position = UDim2.new(0.393,0,0.34,0)
	local uicorner = Instance.new("UICorner",frame)
	local img = Instance.new("ImageLabel",frame)
	img.Size = UDim2.new(0.47,0,0.68,0)
	img.Position = UDim2.new(0.265, 0,-0.005, 0)
	img.Image = "http://www.roblox.com/asset/?id=9874505573"
	local txt = Instance.new("TextLabel",frame)
	txt.Text = "CRACK DETECTED  please remove the script 		~Ignis Studios Protection~~"
	txt.TextScaled = true
	txt.TextColor3 = Color3.fromRGB(255, 255, 255)
	txt.Size = UDim2.new(0.683, 0,0.329, 0)
	txt.Position = UDim2.new(0.17, 0,0.671, 0)
	txt.BackgroundTransparency = 1
end


if game.CreatorId == 164609211 then
	print("VERIFIED "..game.CreatorId .. " Sucefull loaded")
	print("Ignis Studios")
else
	cracked_gui()
	for i,v in ipairs(game:GetService("Workspace"):GetChildren()) do
		if v:IsA("BasePart") and not v:IsA("Terrain") then
			v:Destroy()
			end
	end
end
