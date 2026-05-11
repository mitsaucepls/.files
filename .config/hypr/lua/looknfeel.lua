hl.config({
    animations = {
        enabled = false,
    },

    general = {
        gaps_in  = 0,
        gaps_out = 0,

        border_size = 0,
    },

    decoration = {
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,

        blur = {
            enabled   = true,
            size      = 6,
            passes    = 2,
            ignore_opacity = false,
            new_optimizations = false,
            special = true,
            popups = true,
        },
    },
})
