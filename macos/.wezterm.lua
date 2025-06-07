-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 16
config.enable_tab_bar = false
-- config.window_decorations = "RESIZE"
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 20

-- color scheme

-- wezterm.gui is not available to the mux server, so take care to
-- do something reasonable when this config is evaluated by the mux
function get_appearance()
	if wezterm.gui then
		return wezterm.gui.get_appearance()
	end
	return "Dark"
end

function scheme_for_appearance(appearance)
	if appearance:find("Dark") then
		return "OneHalfDark"
	else
		return "OneHalfLight"
	end
end

config.color_scheme = scheme_for_appearance(get_appearance())

-- and finally, return the configuration to wezterm
return config
