
local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Aura Dark'
config.font = wezterm.font 'JetBrainsMono NF'
config.font_size = 11
config.default_cursor_style= 'SteadyBar'
config.initial_cols = 100
config.initial_rows = 25
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"
return config
