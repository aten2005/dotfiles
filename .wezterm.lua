local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.default_prog = { "wsl.exe", "~"}

config.font = wezterm.font("Fira Code")
config.font_size = 10
config.color_scheme = "Default (dark) (terminal.sexy)"
config.initial_cols = 120
config.initial_rows = 28

config.enable_tab_bar = false

return config

