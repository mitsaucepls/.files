hl.monitor({
  output   = "DP-5",
  mode     = "1920x1080@240",
  position = "0x0",
})

hl.monitor({
  output = "DP-6",
  mode = "2560x1440@240",
  position = "1920x0",
  bitdepth = 10,
  cm = "dp3",
  -- icc = "/home/master/Downloads/monitor/MAG-271QPX-E2.icm"
})

hl.config {
  render = {
    cm_auto_hdr = true
  }
}
