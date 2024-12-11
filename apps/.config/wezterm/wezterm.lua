local wezterm = require 'wezterm'
local config = wezterm.config_builder()
--- put config here -----------------------------------

-- env
config.enable_wayland = true
config.term = 'xterm-256color'
config.automatically_reload_config = true

config.color_scheme = 'catppuccin-frappe'
config.audible_bell = 'Disabled'
config.detect_password_input = true

-- font
config.font = wezterm.font 'FiraCode Nerd Font Mono'
config.font_size = 12.0
config.bold_brightens_ansi_colors = 'BrightAndBold'
config.harfbuzz_features = { 'calt=0' } -- turns off ligatures

-- window 
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'
config.window_padding = { left = 3, right = 0, top = 3, bottom = 0}
config.initial_rows = 60
config.initial_cols = 144
config.adjust_window_size_when_changing_font_size = false
config.alternate_buffer_wheel_scroll_speed = 1

-- scrolling
config.scrollback_lines = 50000

-- cursor
config.default_cursor_style = 'SteadyBar'

-- mouse
config.hide_mouse_cursor_when_typing = true

-- keybinds





--- end of config -------------------------------------
return config
