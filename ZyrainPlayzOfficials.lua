--// LocalScript inside StarterGui

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AutoSystemGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 360, 0, 340)
mainFrame.Position = UDim2.new(0, 50, 0, 100)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

local corner = Instance.new("UICorner", mainFrame)
corner.CornerRadius = UDim.new(0, 10)

-- Title Bar
local titleBar = Instance.new("Frame")
titleBar.Size = UDim2.new(1, 0, 0, 35)
titleBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
titleBar.BorderSizePixel = 0
titleBar.Parent = mainFrame

local titleCorner = Instance.new("UICorner", titleBar)
titleCorner.CornerRadius = UDim.new(0, 10)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 1, 0)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Zyne's Auto Roll | Aura Merchant"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.GothamBold
title.TextSize = 16
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = titleBar

local minimizeBtn = Instance.new("TextButton")
minimizeBtn.Size = UDim2.new(0, 35, 1, 0)
minimizeBtn.Position = UDim2.new(1, -35, 0, 0)
minimizeBtn.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
minimizeBtn.Text = "-"
minimizeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeBtn.Font = Enum.Font.GothamBold
minimizeBtn.TextSize = 20
minimizeBtn.Parent = titleBar

-- Content Frame
local content = Instance.new("Frame")
content.Size = UDim2.new(1, -20, 1, -50)
content.Position = UDim2.new(0, 10, 0, 45)
content.BackgroundTransparency = 1
content.Parent = mainFrame

-- Left Panel (Auto Roll)
local leftPanel = Instance.new("Frame")
leftPanel.Size = UDim2.new(0, 150, 1, 0)
leftPanel.BackgroundTransparency = 1
leftPanel.Parent = content

-- Right Panel (Auto Buy)
local rightPanel = Instance.new("Frame")
rightPanel.Size = UDim2.new(0, 160, 1, 0)
rightPanel.Position = UDim2.new(0, 180, 0, 0)
rightPanel.BackgroundTransparency = 1
rightPanel.Parent = content

local leftList = Instance.new("UIListLayout", leftPanel)
leftList.Padding = UDim.new(0, 10)

local rightList = Instance.new("UIListLayout", rightPanel)
rightList.Padding = UDim.new(0, 10)

-- Helper: Rounded Buttons
local function roundify(button)
	local c = Instance.new("UICorner")
	c.CornerRadius = UDim.new(0, 8)
	c.Parent = button
end

-------------------------------------
-- AUTO ROLL SECTION (1 Button)
-------------------------------------
local autoRoll = false

local btnRoll = Instance.new("TextButton")
btnRoll.Size = UDim2.new(1, 0, 0, 45)
btnRoll.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
btnRoll.TextColor3 = Color3.fromRGB(255, 255, 255)
btnRoll.Font = Enum.Font.GothamBold
btnRoll.TextSize = 18
btnRoll.Text = "Auto Roll (OFF)"
roundify(btnRoll)
btnRoll.Parent = leftPanel

-- Auto roll loop
task.spawn(function()
	while task.wait(0.5) do
		if autoRoll then
			game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("Eggs_Roll"):InvokeServer()
		end
	end
end)

-- Toggle button
btnRoll.MouseButton1Click:Connect(function()
	autoRoll = not autoRoll
	if autoRoll then
		btnRoll.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
		btnRoll.Text = "Auto Roll (ON)"
	else
		btnRoll.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
		btnRoll.Text = "Auto Roll (OFF)"
	end
end)

-------------------------------------
-- AUTO BUY SECTION (6 Buttons)
-------------------------------------
local toggles = {}

local function createBuyButton(index)
	local button = Instance.new("TextButton")
	button.Size = UDim2.new(1, 0, 0, 40)
	button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
	button.TextColor3 = Color3.fromRGB(255, 255, 255)
	button.Font = Enum.Font.GothamBold
	button.TextSize = 18
	button.Text = "Buy " .. index .. " (OFF)"
	roundify(button)
	button.Parent = rightPanel

	toggles[index] = false

	-- Auto-buy loop
	task.spawn(function()
		while task.wait(0.5) do
			if toggles[index] then
				local args = {"AuraEggMerchant", index}
				game:GetService("ReplicatedStorage"):WaitForChild("Network"):WaitForChild("CustomMerchants_Purchase"):InvokeServer(unpack(args))
			end
		end
	end)

	button.MouseButton1Click:Connect(function()
		toggles[index] = not toggles[index]
		if toggles[index] then
			button.BackgroundColor3 = Color3.fromRGB(0, 170, 0)
			button.Text = "Buy " .. index .. " (ON)"
		else
			button.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
			button.Text = "Buy " .. index .. " (OFF)"
		end
	end)
end

-- Create 6 auto-buy buttons
for i = 1, 6 do
	createBuyButton(i)
end

-------------------------------------
-- MINIMIZE BEHAVIOR
-------------------------------------
local isMinimized = false
minimizeBtn.MouseButton1Click:Connect(function()
	isMinimized = not isMinimized
	if isMinimized then
		content.Visible = false
		mainFrame.Size = UDim2.new(0, 360, 0, 35)
		minimizeBtn.Text = "+"
	else
		content.Visible = true
		mainFrame.Size = UDim2.new(0, 360, 0, 340)
		minimizeBtn.Text = "-"
	end
end)
