hl.window_rule({
  name = "maxax",
  suppress_event = "maximize",
  match = {
    class = ".*"
  },
})

hl.window_rule({
    name  = "drag-on-deez-nutz",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})


-- App-specific tweaks
require("apps.lua.waypaper")
require("apps.lua.system")
require("apps.lua.terminals")
