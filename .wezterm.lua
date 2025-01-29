local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'
config.font_size = 22
config.font = wezterm.font 'Victor Mono'
config.use_fancy_tab_bar = false

return config

