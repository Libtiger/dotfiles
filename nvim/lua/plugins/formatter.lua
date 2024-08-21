return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clang-format",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        cmake = { "cmakelang" },
        sh = { "shfmt" },
        cpp = { "clang-format" },
      },
    },
  },
}
