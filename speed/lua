-- Place this LocalScript inside StarterGui

local player = game.Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")
local humanoid = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

player.CharacterAdded:Connect(function(char)
	humanoid = char:WaitForChild("Humanoid")
end)

-- Gui Setup
local gui = Instance.new("ScreenGui")
gui.Name = "SpeedUI"
gui.ResetOnSpawn = false
gui.Parent = PlayerGui

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 340, 0, 120)
frame.Position = UDim2.new(0.5, -170, 0.75, -60)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 35)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
titleBar.BorderSizePixel = 0
titleBar.Parent = frame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = titleBar

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -80, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "⚡ Speed Adjuster"
title.TextColor3 = Color3.new(1, 1, 1)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleBar

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -35, 0, 0)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 70, 70)
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 18
closeButton.Parent = titleBar

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -70, 0, 0)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Text = "—"
minimizeButton.TextColor3 = Color3.fromRGB(200, 200, 200)
minimizeButton.Font = Enum.Font.GothamBold
minimizeButton.TextSize = 18
minimizeButton.Parent = titleBar

-- Slider Background
local sliderBg = Instance.new("Frame")
sliderBg.Size = UDim2.new(0.8, 0, 0, 10)
sliderBg.Position = UDim2.new(0.1, 0, 0.55, 0)
sliderBg.BackgroundColor3 = Color3.fromRGB(80, 80, 90)
sliderBg.BorderSizePixel = 0
sliderBg.Parent = frame

local sliderCorner = Instance.new("UICorner")
sliderCorner.CornerRadius = UDim.new(0, 5)
sliderCorner.Parent = sliderBg

-- Fill bar
local fill = Instance.new("Frame")
fill.Size = UDim2.new(0, 0, 1, 0)
fill.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
fill.BorderSizePixel = 0
fill.Parent = sliderBg

local fillCorner = Instance.new("UICorner")
fillCorner.CornerRadius = UDim.new(0, 5)
fillCorner.Parent = fill

-- Slider Button
local sliderButton = Instance.new("Frame")
sliderButton.Size = UDim2.new(0, 20, 0, 20)
sliderButton.Position = UDim2.new(0, 0, 0.5, -5)
sliderButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
sliderButton.BorderSizePixel = 0
sliderButton.Parent = sliderBg

local sliderButtonCorner = Instance.new("UICorner")
sliderButtonCorner.CornerRadius = UDim.new(1, 0)
sliderButtonCorner.Parent = sliderButton

-- Speed Label
local speedLabel = Instance.new("TextLabel")
speedLabel.Size = UDim2.new(1, 0, 0, 30)
speedLabel.Position = UDim2.new(0, 0, 0.7, 0)
speedLabel.BackgroundTransparency = 1
speedLabel.Text = "Speed: 18"
speedLabel.TextColor3 = Color3.new(1, 1, 1)
speedLabel.TextSize = 18
speedLabel.Font = Enum.Font.Gotham
speedLabel.Parent = frame

-- 🌳 Minimized Tree Icon (Draggable)
local minimizedIcon = Instance.new("TextButton")
minimizedIcon.Size = UDim2.new(0, 50, 0, 50)
minimizedIcon.Position = UDim2.new(0.5, -25, 0.85, 0)
minimizedIcon.Text = "🌳"
minimizedIcon.Font = Enum.Font.GothamBold
minimizedIcon.TextSize = 28
minimizedIcon.BackgroundColor3 = Color3.fromRGB(45, 45, 55)
minimizedIcon.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizedIcon.BorderSizePixel = 0
minimizedIcon.Visible = false
minimizedIcon.Active = true
minimizedIcon.Draggable = true
minimizedIcon.Parent = gui

local minimizedCorner = Instance.new("UICorner")
minimizedCorner.CornerRadius = UDim.new(1, 0)
minimizedCorner.Parent = minimizedIcon

-- Variables
local dragging = false
local minSpeed, maxSpeed = 10, 120
local UserInputService = game:GetService("UserInputService")

-- Slider drag logic
sliderButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		frame.Active = false
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
		frame.Active = true
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		local mouseX = input.Position.X
		local sliderX = sliderBg.AbsolutePosition.X
		local sliderWidth = sliderBg.AbsoluteSize.X
		local relative = math.clamp((mouseX - sliderX) / sliderWidth, 0, 1)

		sliderButton.Position = UDim2.new(relative, -10, 0.5, -5)
		fill.Size = UDim2.new(relative, 0, 1, 0)

		local newSpeed = math.floor(minSpeed + (maxSpeed - minSpeed) * relative)
		speedLabel.Text = "Speed: " .. newSpeed
		if humanoid then humanoid.WalkSpeed = newSpeed end
	end
end)

-- Minimize / Restore
minimizeButton.MouseButton1Click:Connect(function()
	frame.Visible = false
	minimizedIcon.Visible = true
end)

minimizedIcon.MouseButton1Click:Connect(function()
	frame.Visible = true
	minimizedIcon.Visible = false
end)

-- Close / Destroy
closeButton.MouseButton1Click:Connect(function()
	if humanoid then
		humanoid.WalkSpeed = 18
	end
	gui:Destroy()
end)

-- 🟦 Toggle UI visibility with F key
UserInputService.InputBegan:Connect(function(input, processed)
	if not processed and input.KeyCode == Enum.KeyCode.F then
		local visible = not (frame.Visible or minimizedIcon.Visible)
		frame.Visible = visible
		minimizedIcon.Visible = false
	end
end)
