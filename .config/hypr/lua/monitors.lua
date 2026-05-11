hl.monitor({
  output   = "DP-5",
  mode     = "1920x1080@240",
  position = "0x0",
  scale    = "1",
})

hl.monitor({
  output = "DP-6",
  mode = "2560x1440@240",
  position = "1920x0",
  scale = "1",
  bitdepth = 10,
  cm = "wide",
  -- min_luminance = 1
  -- sdrbrightness = 1.3
  -- sdrsaturation = 1.2
  -- supports_wide_color = 1
  -- supports_hdr = 1
  -- use_fp16 = 0
  -- icc = /home/master/Downloads/MAG-271QPX-E2.icm
})

hl.window_rule({
  match = {
    class = "flameshot"
  },
  monitor = "0"
})

hl.window_rule({
  name = "flameshot",
  float = true,
  pin = true,
  no_anim = true,
  stay_focused = true,
  border_size = 0,
  move = "{0 0}",
  size = "{4480 1440}",
  match = {
    class = "^(flameshot)$"
  }
})


hl.bind("SUPER + A", hl.dsp.exec_cmd("hyprland-switch-monitors switch 0"))

hl.bind("SUPER + S", hl.dsp.exec_cmd("hyprland-switch-monitors switch 1"))

hl.bind("SUPER + D", hl.dsp.exec_cmd("hyprland-switch-monitors switch 2"))

hl.bind("SUPER + F", hl.dsp.exec_cmd("hyprland-switch-monitors switch 3"))

hl.bind("SUPER + G", hl.dsp.exec_cmd("hyprland-switch-monitors switch 4"))

hl.bind("SUPER + H", hl.dsp.exec_cmd("hyprland-switch-monitors switch 5"))

hl.bind("SUPER + J", hl.dsp.exec_cmd("hyprland-switch-monitors switch 6"))

hl.bind("SUPER + K", hl.dsp.exec_cmd("hyprland-switch-monitors switch 7"))

hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprland-switch-monitors switch 8"))

hl.bind("SUPER + SEMICOLON", hl.dsp.exec_cmd("hyprland-switch-monitors switch 9"))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind("SUPER + SHIFT + A", hl.dsp.exec_cmd("hyprland-switch-monitors move 0"))

hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("hyprland-switch-monitors move 1"))

hl.bind("SUPER + SHIFT + D", hl.dsp.exec_cmd("hyprland-switch-monitors move 2"))

hl.bind("SUPER + SHIFT + F", hl.dsp.exec_cmd("hyprland-switch-monitors move 3"))

hl.bind("SUPER + SHIFT + G", hl.dsp.exec_cmd("hyprland-switch-monitors move 4"))

hl.bind("SUPER + SHIFT + H", hl.dsp.exec_cmd("hyprland-switch-monitors move 5"))

hl.bind("SUPER + SHIFT + J", hl.dsp.exec_cmd("hyprland-switch-monitors move 6"))

hl.bind("SUPER + SHIFT + K", hl.dsp.exec_cmd("hyprland-switch-monitors move 7"))

hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("hyprland-switch-monitors move 8"))

hl.bind("SUPER + SHIFT + SEMICOLON", hl.dsp.exec_cmd("hyprland-switch-monitors move 9"))


-- hl.bind("SUPER + A", hl.dsp.split-workspace_cmd("1"))
-- hl.bind("SUPER + S", hl.dsp.split-workspace_cmd("2"))
-- hl.bind("SUPER + D", hl.dsp.split-workspace_cmd("3"))
-- hl.bind("SUPER + F", hl.dsp.split-workspace_cmd("4"))
-- hl.bind("SUPER + G", hl.dsp.split-workspace_cmd("5"))
-- hl.bind("SUPER + H", hl.dsp.split-workspace_cmd("6"))
-- hl.bind("SUPER + J", hl.dsp.split-workspace_cmd("7"))
-- hl.bind("SUPER + K", hl.dsp.split-workspace_cmd("8"))
-- hl.bind("SUPER + L", hl.dsp.split-workspace_cmd("9"))
-- hl.bind("SUPER + SEMICOLON", hl.dsp.split-workspace_cmd("10"))

-- hl.bind("SUPER SHIFT + A", hl.dsp.split-movetoworkspacesilent_cmd("1"))
-- hl.bind("SUPER SHIFT + S", hl.dsp.split-movetoworkspacesilent_cmd("2"))
-- hl.bind("SUPER SHIFT + D", hl.dsp.split-movetoworkspacesilent_cmd("3"))
-- hl.bind("SUPER SHIFT + F", hl.dsp.split-movetoworkspacesilent_cmd("4"))
-- hl.bind("SUPER SHIFT + G", hl.dsp.split-movetoworkspacesilent_cmd("5"))
-- hl.bind("SUPER SHIFT + H", hl.dsp.split-movetoworkspacesilent_cmd("6"))
-- hl.bind("SUPER SHIFT + J", hl.dsp.split-movetoworkspacesilent_cmd("7"))
-- hl.bind("SUPER SHIFT + K", hl.dsp.split-movetoworkspacesilent_cmd("8"))
-- hl.bind("SUPER SHIFT + L", hl.dsp.split-movetoworkspacesilent_cmd("9"))
-- hl.bind("SUPER SHIFT + SEMICOLON", hl.dsp.split-movetoworkspacesilent_cmd("10"))

-- hl.bind("SUPER + 1", hl.dsp.split-workspace_cmd("1"))
-- hl.bind("SUPER + 2", hl.dsp.split-workspace_cmd("2"))
-- hl.bind("SUPER + 3", hl.dsp.split-workspace_cmd("3"))
-- hl.bind("SUPER + 4", hl.dsp.split-workspace_cmd("4"))
-- hl.bind("SUPER + 5", hl.dsp.split-workspace_cmd("5"))
-- hl.bind("SUPER + 6", hl.dsp.split-workspace_cmd("6"))
-- hl.bind("SUPER + 7", hl.dsp.split-workspace_cmd("7"))
-- hl.bind("SUPER + 8", hl.dsp.split-workspace_cmd("8"))
-- hl.bind("SUPER + 9", hl.dsp.split-workspace_cmd("9"))
-- hl.bind("SUPER + 10", hl.dsp.split-workspace_cmd("10"))

-- hl.bind("SUPER SHIFT + 1", hl.dsp.split-movetoworkspacesilent_cmd("1"))
-- hl.bind("SUPER SHIFT + 2", hl.dsp.split-movetoworkspacesilent_cmd("2"))
-- hl.bind("SUPER SHIFT + 3", hl.dsp.split-movetoworkspacesilent_cmd("3"))
-- hl.bind("SUPER SHIFT + 4", hl.dsp.split-movetoworkspacesilent_cmd("4"))
-- hl.bind("SUPER SHIFT + 5", hl.dsp.split-movetoworkspacesilent_cmd("5"))
-- hl.bind("SUPER SHIFT + 6", hl.dsp.split-movetoworkspacesilent_cmd("6"))
-- hl.bind("SUPER SHIFT + 7", hl.dsp.split-movetoworkspacesilent_cmd("7"))
-- hl.bind("SUPER SHIFT + 8", hl.dsp.split-movetoworkspacesilent_cmd("8"))
-- hl.bind("SUPER SHIFT + 9", hl.dsp.split-movetoworkspacesilent_cmd("9"))
-- hl.bind("SUPER SHIFT + 10", hl.dsp.split-movetoworkspacesilent_cmd("10"))

hl.bind("SUPER + 1", hl.dsp.exec_cmd("hyprland-switch-monitors switch 0"))

hl.bind("SUPER + 2", hl.dsp.exec_cmd("hyprland-switch-monitors switch 1"))

hl.bind("SUPER + 3", hl.dsp.exec_cmd("hyprland-switch-monitors switch 2"))

hl.bind("SUPER + 4", hl.dsp.exec_cmd("hyprland-switch-monitors switch 3"))

hl.bind("SUPER + 5", hl.dsp.exec_cmd("hyprland-switch-monitors switch 4"))

hl.bind("SUPER + 6", hl.dsp.exec_cmd("hyprland-switch-monitors switch 5"))

hl.bind("SUPER + 7", hl.dsp.exec_cmd("hyprland-switch-monitors switch 6"))

hl.bind("SUPER + 8", hl.dsp.exec_cmd("hyprland-switch-monitors switch 7"))

hl.bind("SUPER + 9", hl.dsp.exec_cmd("hyprland-switch-monitors switch 8"))

hl.bind("SUPER + 0", hl.dsp.exec_cmd("hyprland-switch-monitors switch 9"))

-- Move active window to a workspace with mainMod + SHIFT + [0-9]

hl.bind("SUPER + SHIFT + 1", hl.dsp.exec_cmd("hyprland-switch-monitors move 0"))

hl.bind("SUPER + SHIFT + 2", hl.dsp.exec_cmd("hyprland-switch-monitors move 1"))

hl.bind("SUPER + SHIFT + 3", hl.dsp.exec_cmd("hyprland-switch-monitors move 2"))

hl.bind("SUPER + SHIFT + 4", hl.dsp.exec_cmd("hyprland-switch-monitors move 3"))

hl.bind("SUPER + SHIFT + 5", hl.dsp.exec_cmd("hyprland-switch-monitors move 4"))

hl.bind("SUPER + SHIFT + 6", hl.dsp.exec_cmd("hyprland-switch-monitors move 5"))

hl.bind("SUPER + SHIFT + 7", hl.dsp.exec_cmd("hyprland-switch-monitors move 6"))

hl.bind("SUPER + SHIFT + 8", hl.dsp.exec_cmd("hyprland-switch-monitors move 7"))

hl.bind("SUPER + SHIFT + 9", hl.dsp.exec_cmd("hyprland-switch-monitors move 8"))

hl.bind("SUPER + SHIFT + 0", hl.dsp.exec_cmd("hyprland-switch-monitors move 9"))


hl.bind("SUPER + Z", hl.dsp.exec_cmd("hyprland-switch-monitors next"))
-- hl.bind("SUPER + Z", hl.dsp.focusmonitor_cmd("+1"))
-- hl.bind("SUPER SHIFT + Z", hl.dsp.focusmonitor_cmd("-1"))
