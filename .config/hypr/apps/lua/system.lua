-- Floating windows

-- windowrule = size 800 600, tag:floating-window



-- Fullscreen screensaver
hl.window_rule({
  name = "screensaver",
  fullscreen = true,
  match = {
    class = "Screensaver"
  }
})

-- No transparency on media windows
hl.window_rule({
  name = "yeop",
  opacity = "1 1",
  match = {
    class = "^(zoom|vlc|mpv|org.kde.kdenlive|com.obsproject.Studio|com.github.PintaProject.Pinta|imv|org.gnome.NautilusPreviewer)$"
  }
})
