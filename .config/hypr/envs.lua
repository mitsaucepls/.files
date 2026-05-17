hl.env("PATH", "$HOME/.config/bin/:$PATH")
hl.env("BACKGROUNDS_DIR", "$HOME/personal/background/")

-- Extra env variables
-- Cursor size
-- hl.env("XCURSOR_SIZE", "24")
-- hl.env("HYPRCURSOR_SIZE", "24")

-- Force all apps to use Wayland
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "hyprqt6engine")
hl.env("QT_STYLE_OVERRIDE", "kvantum")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("OZONE_PLATFORM", "wayland")
hl.env("XDG_SESSION_TYPE", "wayland")

-- Allow better support for screen sharing (Google Meet, Discord, etc)
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.config({
  xwayland = {
    force_zero_scaling = true
  },

  -- Don't show update on first launch
  ecosystem = {
    no_update_news = true,
  }

})


hl.env("EDITOR", "nvim")
hl.env("DIFFPROG", "nvim")
hl.env("TERMINAL", "ghostty")

-- hl.env("LIBVA_DRIVER_NAME", "nvidia")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
-- hl.env("NVD_BACKEND", "direct")

-- # additional ENV's for nvidia. Caution, activate with care
-- hl.env("GBM_BACKEND", "nvidia-drm")

hl.env("__GL_GSYNC_ALLOWED", "1") --adaptive Vsync
--hl.env("__NV_PRIME_RENDER_OFFLOAD", "1")
--hl.env("__VK_LAYER_NV_optimus", "NVIDIA_only")
--hl.env("WLR_DRM_NO_ATOMIC", "1")
