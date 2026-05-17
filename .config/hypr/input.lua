-- Control your input devices
-- See https://wiki.hypr.land/Configuring/Variables/#input
hl.config({
  input = {
    kb_layout  = "us",
    kb_variant = "",
    kb_model   = "",
    kb_options = "compose:caps",
    kb_rules   = "",

    follow_mouse = 1,

    sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

    touchpad = {
      natural_scroll = false,
      scroll_factor = 0.4,
    },

    repeat_delay = 300,
    repeat_rate = 30,
    numlock_by_default = true,
  },
  cursor = {
    sync_gsettings_theme = true,
    enable_hyprcursor = true,
    warp_on_change_workspace = 2,
    hide_on_key_press = true,
    no_warps = true,
  },
  misc = {
    disable_hyprland_logo = true,
    disable_splash_rendering = true,
    vrr = 2,
    mouse_move_enables_dpms = true,
    enable_anr_dialog = false,
    enable_swallow = false,
    focus_on_activate = false,
    initial_workspace_tracking = 0,
    middle_click_paste = false,
  }
})


-- Scroll nicely in the terminal
hl.window_rule({
  name = "nicescroll",
  scroll_touchpad = 1.5,
  match = {
    class = "(Alacritty|kitty)"
  }
})

hl.window_rule({
  name = "ghoscroll",
  scroll_touchpad = 0.2,
  match = {
    class = "com.mitchellh.ghostty"
  }
})
