return {
  "akinsho/toggleterm.nvim",
  version = "*",
  lazy = false,
  opts = {
    size = 10,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 0,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = "/bin/zsh",
    float_opts = {
      border = "rounded",
      winblend = 0,
    },
  },
}
