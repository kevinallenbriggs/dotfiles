-- pull the wezterm api
local wezterm = require("wezterm")

-- retrieve the configuration
local config = wezterm.config_builder()

-- fonts
config.font = wezterm.font()
config.font_size = 19

-- always return the config
return config
