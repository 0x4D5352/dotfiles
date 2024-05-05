local wezterm = require("wezterm")
local wallpaper = require("utils/wallpaper")

local config = wezterm.config_builder()

config.default_prog = { os.getenv("HOME") .. "/.cargo/bin/nu", "-l" }

config.color_scheme = "AdventureTime"

wezterm.time.call_after(120, function()
	wezterm.reload_configuration()
end)

wallpaper.apply_to_config(config)

return config
