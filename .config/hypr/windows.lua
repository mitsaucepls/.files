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
require("apps.waypaper")
require("apps.system")
require("apps.terminals")
