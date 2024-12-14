return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "BufLeave", "FocusLost" }, -- optional for lazy loading on trigger events
  opts = {
    enable = true,
    trigger_events = {
      defer_save = { "BufLeave", "FocusLost" },
    },
  },
}
