
local ScreenGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local ZyrainPlayz = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Messege = Instance.new("TextLabel")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = ScreenGui
Main.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
Main.Position = UDim2.new(0.0100273667, 0, 0.0420382172, 0)
Main.Size = UDim2.new(0, 159, 0, 188)
Main.Active = true
Main.Draggable = true

ZyrainPlayz.Name = "ZyrainPlayz"
ZyrainPlayz.Parent = Main
ZyrainPlayz.BackgroundColor3 = Color3.fromRGB(85, 170, 255)
ZyrainPlayz.Size = UDim2.new(0, 159, 0, 18)
ZyrainPlayz.Font = Enum.Font.SourceSans
ZyrainPlayz.Text = "Pet Sim X"
ZyrainPlayz.TextColor3 = Color3.fromRGB(0, 0, 0)
ZyrainPlayz.TextSize = 14.000

TextButton.Parent = Main
TextButton.BackgroundColor3 = Color3.fromRGB(111, 253, 255)
TextButton.Position = UDim2.new(0.0503144637, 0, 0.259067357, 0)
TextButton.Size = UDim2.new(0, 144, 0, 28)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Start"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
TextButton.MouseButton1Down:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/KhawaiiRED/Zyrain231/main/ZyrainPlayz.lua"))()
end)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Title.Position = UDim2.new(0.150943398, 0, 0.124352328, 0)
Title.Size = UDim2.new(0, 115, 0, 15)	
Title.Font = Enum.Font.SourceSans
Title.Text = "Zyrain Official Dupe "
Title.TextColor3 = Color3.fromRGB(85, 255, 255)
Title.TextSize = 14.000

Messege.Name = "Messege"
Messege.Parent = Main
Messege.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Messege.Position = UDim2.new(0.0503144637, 0, 0.44559586, 0)
Messege.Size = UDim2.new(0, 144, 0, 97)
Messege.Font = Enum.Font.SourceSans
Messege.Text = "USE IT ON YOUR RISK "
Messege.TextColor3 = Color3.fromRGB(255, 255, 0)
Messege.TextSize = 14.000