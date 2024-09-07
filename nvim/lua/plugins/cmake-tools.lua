return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "float",
    },
    keys = {
      { "<F8>", "<cmd>ToggleTerm<cr>", desc = "Toggle an float terminal" },
    },
  },
  {
    "Civitasv/cmake-tools.nvim",
    opts = {
      cmake_regenerate_on_save = false, -- auto generate when save CMakeLists.txt
      cmake_build_directory = "build",
      cmake_executor = {
        name = "toggleterm",
      },
      cmake_runner = { -- runner to use
        name = "toggleterm", -- name of the runner
      },
      cmake_notifications = {
        runner = { enabled = false },
        executor = { enabled = false },
        spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }, -- icons used for progress display
        refresh_rate_ms = 100, -- how often to iterate icons
      },
    },
    keys = {
      { "<F5>", "<cmd>CMakeGenerate<cr>", desc = "CMake build" },
      { "<F6>", "<cmd>CMakeRun<cr>", desc = "CMake Run" },
    },
  },
}
