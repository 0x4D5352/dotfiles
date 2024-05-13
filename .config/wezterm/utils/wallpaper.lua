local wezterm = require("wezterm")
local module = {}

local wallpapers = "/Pictures/Desktop Photos"

local wallpapers_dir = os.getenv("HOME") .. wallpapers

local function choose_random_wallpaper(dir)
	local wallpapers = {}
	for _, v in ipairs(wezterm.read_dir(dir)) do
		if not string.match(v, "%.DS_Store$") then
			table.insert(wallpapers, v)
		end
	end
	local wallpaper = wallpapers[math.random(1, #wallpapers)]
	return wallpaper
end

function module.apply_to_config(config)
	local current_wallpaper = choose_random_wallpaper(wallpapers_dir)
	config.window_background_image = current_wallpaper
	config.window_background_image_hsb = {
		brightness = 0.25,
	}
end

return module
