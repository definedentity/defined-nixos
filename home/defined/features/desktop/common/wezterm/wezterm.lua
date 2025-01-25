local wezterm = require("wezterm")

local act = wezterm.action

local theme = {
	name = "macchiato",
	rosewater = "#f4dbd6",
	flamingo = "#f0c6c6",
	pink = "#f5bde6",
	mauve = "#c6a0f6",
	red = "#ed8796",
	maroon = "#ee99a0",
	peach = "#f5a97f",
	yellow = "#eed49f",
	green = "#a6da95",
	teal = "#8bd5ca",
	sky = "#91d7e3",
	sapphire = "#7dc4e4",
	blue = "#8aadf4",
	lavender = "#b7bdf8",
	text = "#cad3f5",
	subtext1 = "#b8c0e0",
	subtext0 = "#a5adcb",
	overlay2 = "#939ab7",
	overlay1 = "#8087a2",
	overlay0 = "#6e738d",
	surface2 = "#5b6078",
	surface1 = "#494d64",
	surface0 = "#363a4f",
	base = "#24273a",
	mantle = "#1e2030",
	crust = "#181926",
}

local config = {}

local background = theme.crust

config.color_scheme = "Catppuccin Macchiato"
config.colors = {
	background = background,
	tab_bar = {
		background = background,
		active_tab = {
			bg_color = theme.blue,
			fg_color = background,
			intensity = "Bold",
		},
		inactive_tab = {
			fg_color = theme.overlay0,
			bg_color = background,
			italic = true,
		},
	},
}

config.window_background_opacity = 0.9

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 14.0

config.window_decorations = "NONE"
config.adjust_window_size_when_changing_font_size = false
config.window_padding = {
    top = 8,
    bottom = 8,
    left = 8,
    right = 8
}

config.default_cursor_style = "BlinkingBar"

config.enable_kitty_keyboard = false

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false

config.enable_wayland = true
config.webgpu_preferred_adapter = {
    backend = "Vulkan",
    device = 8093,
    device_type = "DiscreteGpu",
    driver = "NVIDIA",
    driver_info = "565.77",
    name = "NVIDIA GeForce GTX 1650",
    vendor = 4318
}
config.front_end = "WebGpu"
config.webgpu_power_preference = "HighPerformance"

config.keys = {
    {
        mods = "CTRL",
        key = "c",
        action = act.CopyTo "Clipboard"
    },
    {
        mods = "CTRL",
        key = "v",
        action = act.PasteFrom "Clipboard"
    },
    {
        mods = "WIN|SHIFT",
        key = "p",
        action = act.ActivateCommandPalette
    },
    {
        mods = "ALT",
        key = "r",
        action = act.CloseCurrentTab { confirm = true }
    },
    {
        mods = "ALT",
        key = "a",
        action = act.SpawnTab "CurrentPaneDomain"
    },
    {
        mods = "ALT",
        key = "q",
        action = act.ActivateTabRelative(-1)
    },
    {
        mods = "ALT",
        key = "w",
        action = act.ActivateTabRelative(1)
    },
    {
        mods = "ALT",
        key = "UpArrow",
        action = act.ScrollToTop
    },
    {
        mods = "ALT",
        key = "DownArrow",
        action = act.ScrollToBottom
    },
    {
        mods = "ALT",
        key = "[",
        action = act.SplitVertical { domain = 'CurrentPaneDomain' }
    },
    {
        mods = "ALT",
        key = "]",
        action = act.SplitHorizontal { domain = 'CurrentPaneDomain' }
    }, {
        mods = "ALT",
        key = "c",
        action = act.CloseCurrentPane { confirm = true },
    },
    {
        key = 'h',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Left',
      },
      {
        key = 'l',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Right',
      },
      {
        key = 'k',
        mods = 'ALT',
        action = act.ActivatePaneDirection 'Up',
      },
      {
        key = "j",
        mods = "ALT",
        action = act.ActivatePaneDirection "Down",
      },
}

return config