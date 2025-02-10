-- pull the wezterm api
local wezterm = require("wezterm")

-- retrieve the configuration
local config = wezterm.config_builder()

-- fonts
config.font = wezterm.font("Hack Nerd Font Mono")
config.color_scheme = "Catppuccin Mocha"
-- config.font_size = 19

-- auto reload config
config.automatically_reload_config = true

config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

-- always return the config
return config
