return {
  "okuuva/auto-save.nvim",
  cmd = "ASToggle",
  event = { "BufLeave", "FocusLost" }, -- optional for lazy loading on trigger events
  opts = {
    trigger_events = {
      immediate_save = { "BufLeave", "FocusLost" },
      defer_save = {},
      cancel_defered_save = { "InsertEnter" },
      debounce_delay = 1000,
    },
  },
}
