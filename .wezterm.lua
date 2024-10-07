local wezterm = require 'wezterm'
local config = {
    enable_wayland = true,
    harfbuzz_features = { 'liga=1', 'calt=1', 'clig=1' },
    font_size = 9.5,
    enable_tab_bar = false,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0
    },
    color_scheme = "Gruvbox Dark (Gogh)",
    window_background_opacity = 0.8,
}

config.font = wezterm.font_with_fallback {
  {
    family = "Iosevka Term Slab",
    weight = "Medium",
  },
  {
    family = "Noto Color Emoji"
  }
}

return config
