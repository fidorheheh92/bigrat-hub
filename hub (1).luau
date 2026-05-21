-- Script Hub
-- UI: Obsidian Library by deividcomsono
-- https://github.com/deividcomsono/Obsidian

local repo = "https://raw.githubusercontent.com/fidorheheh92/forkork-bigrat/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

local Window = Library:CreateWindow({
	Title = "Bigrat Script Hub",
	Footer = "bigrathub v1.0",
    Icon = 130924421303223,
	ShowCustomCursor = true,
	NotifySide = "Right",
	AutoShow = true,
    Resizable = true,
})

-- ─────────────────────────────────────────────
-- Helper: safely run a loadstring with a notify
-- ─────────────────────────────────────────────
local function RunScript(name, fn)
	local ok, err = pcall(fn)
	if ok then
		Library:Notify({
			Title = "Bigrat Hub",
			Description = name .. " loaded!",
			Time = 3,
		})
	else
		Library:Notify({
			Title = "Hub – Error",
			Description = name .. " failed:\n" .. tostring(err),
			Time = 6,
		})
	end
end

-- ─────────────────────────────────────────────
-- Tabs
-- ─────────────────────────────────────────────
local Tabs = {
	InfiniteYield  = Window:AddTab("Infinite Yield",  "terminal"),
	FlickAimbot    = Window:AddTab("Flick Aimbot",    "crosshair"),
	KiciaHook      = Window:AddTab("Kicia Hook",      "anchor"),
	SolixHub       = Window:AddTab("Solix Hub",       "globe"),
	ZenithHub      = Window:AddTab("Zenith Hub",      "zap"),
	PrisonLife     = Window:AddTab("Prison Life",     "shield"),
	MsPaint        = Window:AddTab("mspaint",         "paintbrush"),
	CosmicHub      = Window:AddTab("Cosmic Hub",      "rocket"),
    RingtaHub      = Window:AddTab("Ringta",         "zap"),
    QuenzyHub      = Window:AddTab("Quenzy",         "sparkles"),
    BladeBall      = Window:AddTab("BladeBall",      "sword"),
	["UI Settings"] = Window:AddTab("UI Settings",   "settings"),
}

-- ─────────────────────────────────────────────
-- 1. Infinite Yield
-- ─────────────────────────────────────────────
do
	local Box = Tabs.InfiniteYield:AddLeftGroupbox("Infinite Yield", "terminal")
	Box:AddLabel("A feature-rich admin command script.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Infinite Yield",
		Tooltip = "Loads Infinite Yield from EdgeIY/infiniteyield",
		Func = function()
			RunScript("Infinite Yield", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 2. Flick Aimbot
-- ─────────────────────────────────────────────
do
	local Box = Tabs.FlickAimbot:AddLeftGroupbox("Flick Aimbot", "crosshair")
	Box:AddLabel("Flick aimbot script.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Flick Aimbot",
		Tooltip = "Loads Flick Aimbot from zenss555a/script",
		Func = function()
			RunScript("Flick Aimbot", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/zenss555a/script/refs/heads/main/Flick-Aimbot.lua"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 2. Blade ball
-- ─────────────────────────────────────────────

do
	local Box = Tabs.BladeBall:AddLeftGroupbox("Bladeball", "sword")
	Box:AddLabel("bladeball script.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run bladeball forcefield",
		Tooltip = "Loads script",
		Func = function()
			RunScript("Bladeball", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/Akash1al/Blade-Ball-Updated-Script/refs/heads/main/Blade-Ball-Script"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 3. Kicia Hook
-- ─────────────────────────────────────────────
do
	local Box = Tabs.KiciaHook:AddLeftGroupbox("Kicia Hook", "anchor")
	Box:AddLabel("Kicia Hook loader.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Kicia Hook",
		Tooltip = "Loads Kicia Hook loader",
		Func = function()
			RunScript("Kicia Hook", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/kiciahook/kiciahook/refs/heads/main/loader.luau"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 4. Solix Hub  (requires script key)
-- ─────────────────────────────────────────────
do
	local Box = Tabs.SolixHub:AddLeftGroupbox("Solix Hub", "globe")
	Box:AddLabel("Solix Hub – requires a script key.\nEnter your key below before running.", true)
	Box:AddDivider()

	Box:AddInput("SolixKey", {
		Default = "QJNKQrDdDjHzbtobUyVnjLhtXSivJLSn", -- prefilled with the key from your file
		Text = "Script Key",
		Placeholder = "Paste your Solix key here",
		Tooltip = "Your Solix Hub script_key",
		Finished = true, -- only updates on Enter
	})

	Box:AddButton({
		Text = "Run Solix Hub",
		Tooltip = "Sets script_key then loads Solix Hub",
		Func = function()
			RunScript("Solix Hub", function()
				-- write the key into the global that the loader reads
				getgenv().script_key = Options.SolixKey.Value
				loadstring(game:HttpGet("https://raw.githubusercontent.com/bao8jl/solixhub/main/loader"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 5. Zenith Hub
-- ─────────────────────────────────────────────
do
	local Box = Tabs.ZenithHub:AddLeftGroupbox("Zenith Hub", "zap")
	Box:AddLabel("Zenith Hub multi-game script.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Zenith Hub",
		Tooltip = "Loads Zenith Hub from zenithhub.cloud",
		Func = function()
			RunScript("Zenith Hub", function()
				loadstring(game:HttpGet("https://zenithhub.cloud/panel/script"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 6. Prison Life
-- ─────────────────────────────────────────────
do
	local Box = Tabs.PrisonLife:AddLeftGroupbox("Prison Life", "shield")
	Box:AddLabel("Prison Life script.", true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Prison Life Script",
		Tooltip = "Loads Prison Life script",
		Func = function()
			RunScript("Prison Life", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/zenss555a/script/refs/heads/main/Prison-Life.lua", true))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 7. ringta  (ink game n idk )
-- ─────────────────────────────────────────────

do
	local Box = Tabs.RingtaHub:AddLeftGroupbox("Ringta", "zap")
	Box:AddLabel("Multi-game script hub.\nSupported games:\n• Ink game\n• Dead Rails\n• 99 Nights\n\n⭐ Does NOT Require a key.",
		 true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run Ink game Script",
		Tooltip = "Loads Ink game script",
		Func = function()
			RunScript("Ink game", function()
				loadstring(game:HttpGet("https://raw.githubusercontent.com/wefwef34/inkgames.github.io/refs/heads/main/ringta.lua"))()
			end)
		end,
	})
end

do
	local Box = Tabs.QuenzyHub:AddLeftGroupbox("Quenzy", "sparkles")
	Box:AddLabel("Multi-game script hub.\nSupported games:\n• jujutsu shen\n• Murder Mystery 2\n• Jujutsu Infinity\n• Soccer Zero\n\n🔑 Does Require a key.",
		 true)
	Box:AddDivider()
	Box:AddButton({
		Text = "Run  Script",
		Tooltip = "Loads script",
		Func = function()
			RunScript("multi game", function()
				loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/2a409e262f6290ce71507bd4225207fba1013128f08adfc4e6d43883b49351d9/download"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 8. mspaint  (luarmor v3 – key required)
--    Supported games: Doors, Fisch, 99 Nights,
--    3008, Build a Boat, Grace, MM2, Word Bomb
-- ─────────────────────────────────────────────
do
	local Box = Tabs.MsPaint:AddLeftGroupbox("mspaint", "paintbrush")
	Box:AddLabel(
		"Multi-game script hub.\nSupported games:\n• Doors\n• Fisch\n• 99 Nights\n• 3008\n• Build a Boat for Treasure\n• Grace\n• Murder Mystery 2\n• Word Bomb\n\n⚠ Requires a key.",
		true
	)
	Box:AddDivider()

	-- luarmor v3 reads getgenv().luarmor_key before the loader is called
	Box:AddInput("MsPaintKey", {
		Default = "",
		Text = "Licence Key",
		Placeholder = "Paste your mspaint key here",
		Tooltip = "Your luarmor key for mspaint",
		Finished = true,
	})

	Box:AddButton({
		Text = "Run mspaint",
		Tooltip = "Sets luarmor key then loads mspaint, hit enter before running the script",
		Func = function()
			local key = Options.MsPaintKey.Value
			if key == "" then
				Library:Notify({
					Title = "mspaint",
					Description = "Please enter your key first!",
					Time = 4,
				})
				return
			end
			RunScript("mspaint", function()
				getgenv().luarmor_key = key
				loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/002c19202c9946e6047b0c6e0ad51f84.lua"))()
			end)
		end,
	})
end

-- ─────────────────────────────────────────────
-- 9. Cosmic Hub  (luarmor v4 – key required)
--    Game: BloxStrike
-- ─────────────────────────────────────────────
do
	local Box = Tabs.CosmicHub:AddLeftGroupbox("Cosmic Hub", "rocket")
	Box:AddLabel(
		"Cosmic Hub – BloxStrike script.\n\n⚠ Requires a key.",
		true
	)
	Box:AddDivider()

	-- luarmor v4 uses the same getgenv().luarmor_key pattern
	Box:AddInput("CosmicKey", {
		Default = "",
		Text = "Licence Key",
		Placeholder = "Paste your Cosmic Hub key here",
		Tooltip = "Your luarmor key for Cosmic Hub",
		Finished = true,
	})

	Box:AddButton({
		Text = "Run Cosmic Hub",
		Tooltip = "Sets luarmor key then loads Cosmic Hub , hit enter before running the script",
		Func = function()
			local key = Options.CosmicKey.Value
			if key == "" then
				Library:Notify({
					Title = "Cosmic Hub",
					Description = "Please enter your key first!",
					Time = 4,
				})
				return
			end
			RunScript("Cosmic Hub", function()
				getgenv().luarmor_key = key
				loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/aaa0bd3546701790af6ef0b31ea8eacf.lua"))()
			end)
		end,
	})
end



-- ─────────────────────────────────────────────
-- UI Settings tab (theme + keybind + save/load)
-- ─────────────────────────────────────────────
local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu", "wrench")

MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})

MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",
	Text = "Notification Side",
	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})

MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",
	Text = "DPI Scale",
	Callback = function(Value)
		Value = Value:gsub("%%", "")
		Library:SetDPIScale(tonumber(Value))
	end,
})

MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind"):AddKeyPicker("MenuKeybind", {
	Default = "RightShift",
	NoUI = true,
	Text = "Menu keybind",
})


MenuGroup:AddButton("Unload", function()
	Library:Unload()
end)



Library.ToggleKeybind = Options.MenuKeybind

-- Addons
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("ScriptHub")
SaveManager:SetFolder("ScriptHub/configs")

SaveManager:BuildConfigSection(Tabs["UI Settings"])
ThemeManager:ApplyToTab(Tabs["UI Settings"])




SaveManager:LoadAutoloadConfig()
