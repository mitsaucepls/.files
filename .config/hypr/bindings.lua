local ipc = "qs -c noctalia-shell ipc call"
-- Application bindings
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("ghostty"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("nemo"))

-- If your web app url contains #, type it as ## to prevent hyperland treat it as comments
-- bindd = SUPER SHIFT, C, WhatsApp, exec, hyprland-launch-or-focus WhatsApp "hyprland-launch-webapp 'https://web.whatsapp.com/'"
-- bindd = SUPER SHIFT, E, Excalidraw, exec, hyprland-launch-or-focus Excalidraw "hyprland-launch-webapp 'https://excalidraw.com/'"
-- bindd = SUPER SHIFT, M, Music, exec, hyprland-launch-or-focus spotify

hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(ipc .. " launcher toggle"))

hl.bind("SUPER + I", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + PERIOD", hl.dsp.window.float()) -- Float Mode
hl.bind("SUPER + SHIFT + X", hl.dsp.exec_cmd("XDG_CURRENT_DESKTOP=sway flameshot gui"))

-- Desktop zooming or magnifier
-- hl.bind("ALT + HOME + mouse_down", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor * 2.0}')\""))
-- hl.bind("ALT + HOME + mouse_up", hl.dsp.exec_cmd("hyprctl keyword cursor:zoom_factor \"$(hyprctl getoption cursor:zoom_factor | awk 'NR==1 {factor = $2; if (factor < 1) {factor = 1}; print factor / 2.0}')\""))

-- FEATURES / EXTRAS (UserScripts)
hl.bind("SUPER + W", hl.dsp.exec_cmd("waypaper"))
hl.bind("SUPER + E", hl.dsp.exec_cmd(ipc .. " settings toggle"))
hl.bind("SUPER + V", hl.dsp.exec_cmd(ipc .. " launcher clipboard"))
-- hl.bind("SUPER + B", hl.config({ decoration = { blur = { enabled = true } } }))

hl.bind("SUPER + Q", hl.dsp.window.close()) -- close active (not kill)

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true }) -- NOTE: mouse:272 = left click
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true }) -- NOTE: mouse:272 = right click

