hl.window_rule({
  monitor = 0,
  name = "flameshot",
  float = true,
  pin = true,
  no_anim = true,
  stay_focused = true,
  border_size = 0,
  move = {0, 0},
  size = {4480, 1440},
  match = {
    class = "^(flameshot)$"
  }
})

local keys = { "A", "S", "D", "F", "G", "H", "J", "K", "L", "SEMICOLON" }

for index, letter_key in ipairs(keys) do
  local workspace = index
  local index_key = (index == 10) and "0" or tostring(index)

  -- Move active window to a workspace with mainMod + SHIFT + [0-9]
  hl.bind("SUPER + " .. letter_key, hl.dsp.exec_cmd("hyprland-switch-monitors switch " .. workspace))
  hl.bind("SUPER + " .. index_key, hl.dsp.exec_cmd("hyprland-switch-monitors switch " .. workspace))

  -- Move active window to a workspace with mainMod + SHIFT + [0-9]
  hl.bind("SUPER + SHIFT + " .. letter_key, hl.dsp.exec_cmd("hyprland-switch-monitors move " .. workspace))
  hl.bind("SUPER + SHIFT + " .. index_key, hl.dsp.exec_cmd("hyprland-switch-monitors move " .. workspace))
end

-- for i = 1, 10, 1 do
--   hl.workspace_rule({ workspace = tostring(i), persistent = true, monitor = "DP-6" })
-- end

-- for i = 11, 20, 1 do
--   hl.workspace_rule({ workspace = tostring(i), persistent = true, monitor = "DP-5" })
-- end

hl.bind("SUPER + Z", hl.dsp.exec_cmd("hyprland-switch-monitors next"))
