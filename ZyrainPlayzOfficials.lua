	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("⚜Zyrain Official⚜", "Midnight")
	local Tab = Window:NewTab("☄Main☄")
	local Section = Tab:NewSection("☄Main☄")
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	Section:NewLabel("⚜Script By Zyrain Official⚜")
	Section:NewLabel("😻Discord ID😻")
	Section:NewLabel("✔ZyrainPlayz#1825✔")
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	local Tab = Window:NewTab("🐱Pets🐶")
	local Section = Tab:NewSection("🐱Pets🐶")
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewToggle("🌈Rainbow Egg🌈[Single Hatch]", "Chance to get 🌈Huge Pixel Cat Here🌈", function(state)
		if state then
			_G.autotap2 = True;

	while _G.autotap2 == True do
		local A_1 = {[1] = "Rainbow Pixel Egg", [2] = false}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]Event:InvokeServer(A_1)
	wait()


	end
		else
			_G.autotap2 = false;
		local A_1 = {[1] = "Rainbow Pixel Egg", [2] = false}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]Event:InvokeServer(A_1)

	while _G.autotap2 == True do

	wait()


	end
		end
	end)
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewToggle("🌈Rainbow Egg🌈[3x Hatch]", "Chance to get 🌈Huge Pixel Cat Here🌈", function(state)
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
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    	Section:NewToggle("👾Hacker Egg👾[Single Hatch]", "Chance to get 👾Huge Hack Cat Here👾", function(state)
		if state then
			_G.autotap1 = True;

	while _G.autotap1 == True do
	local A_1 = {[1] = "Hacker Egg", [2] = false}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]Event:InvokeServer(A_1)
	wait()


	end
		else
			_G.autotap1 = false;

	while _G.autotap1 == True do
	local A_1 = {[1] = "Hacker Egg", [2] = false}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["buy egg"]Event:InvokeServer(A_1)
	wait()


	end
		end
	end)

	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewToggle("👾Hacker Egg👾[3x Hatch]", "Chance to get 👾Huge Hack Cat Here👾", function(state)
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
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local Tab = Window:NewTab("⛏Farming⛏")
	local Section = Tab:NewSection("⛏Farming⛏")


	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local Tab = Window:NewTab("🧑Local Player🧑")
	local Section = Tab:NewSection("🧑Local Player🧑")
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewSlider("Player Speed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
	end)
	Section:NewSlider("Jumppower", "Changes the jumppower", 250, 50, function(v)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
	end)
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	local Tab = Window:NewTab("⚙MISC⚙")
	local Section = Tab:NewSection("⚙MISC⚙")
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewToggle("Equip Best/Unuquip", "ToggleInfo", function(state)
		if state then
			local A_1 = {}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["equip best pets"]Event:InvokeServer(A_1)
		else
			local A_1 = {}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["unequip all pets"]Event:InvokeServer(A_1)
		end
	end)
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewButton("claim Rank Reward", "claim your rank reward here", function()
		local A_1 = {}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["redeem rank rewards"]Event:InvokeServer(A_1)

	end)
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	Section:NewButton("claim VIP Reward", "claim your VIP reward here", function()
		local A_1 = {}local Event = game:GetService("Workspace")["__THINGS"]["__REMOTES"]["redeem vip rewards"]Event:InvokeServer(A_1)

	end)
    	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    Section:NewButton("Gamepasses", "unlock your gamepasses here", function()
	local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
    gmppath.Owns = function() return true end
	end)
	Section:NewKeybind("KeybindText", "KeybindInfo", Enum.KeyCode.F, function()
		Library:ToggleUI()
	end)
	------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------  
