local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("⚜Zyrain Official⚜", "Midnight")
local Tab = Window:NewTab("☄Main☄")
local Section = Tab:NewSection("☄Main☄")

Section:NewSlider("Player Speed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
Section:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

local Tab = Window:NewTab("🐱Pets🐶")
local Section = Tab:NewSection("🐱Pets🐶")

Section:NewToggle("🌈Rainbow Egg🌈", "Chance to get 🌈Huge Pixel Cat Here🌈", function(state)
    if state then
        _G.autotap = True;

while _G.autotap == True do
local args = {[1] = {[1] = "Rainbow Pixel Egg",[2] = true}}workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
wait()


end
    else
        _G.autotap = false;

while _G.autotap == True do
local args = {[1] = {[1] = "Rainbow Pixel Egg",[2] = true}}workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
wait()


end
    end
end)

Section:NewToggle("👾Hacker Egg👾", "Chance to get 👾Huge Hack Cat Here👾", function(state)
    if state then
        _G.autotap1 = True;

while _G.autotap1 == True do
local args = {[1] = {[1] = "Hacker Egg",[2] = true}}workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
wait()


end
    else
        _G.autotap1 = false;

while _G.autotap1 == True do
local args = {[1] = {[1] = "Hacker Egg",[2] = true}}workspace.__THINGS.__REMOTES:FindFirstChild("buy egg"):InvokeServer(unpack(args))
wait()


end
    end
end)

