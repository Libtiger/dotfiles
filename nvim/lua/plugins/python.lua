return {
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp", -- This is the regexp branch, use this until its merged with the main branch later
    opts = {
      enable_debug_output = true,
      settings = {
        search = {
          anaconda_envs = {
            command = "fdfind bin/python$ $HOME/tools/mambaforge/envs --full-path --color never -E /proc", -- change path here to your anaconda envs
          },
          anaconda_base = {
            command = "fdfind /python$ $HOME/tools/mambaforge/bin --full-path --color never -E /proc", -- change path here to your anaconda base
          },
        },
      },
    },
  },
}
