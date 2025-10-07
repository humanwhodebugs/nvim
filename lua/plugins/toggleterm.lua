return {
  "akinsho/toggleterm.nvim", -- Easily manage multiple terminal windows
  version = "*", -- Always use the latest version
  event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

  opts = {
    size = 10,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_terminals = false,
    shading_factor = 0,
    start_in_insert = true,
    persist_size = true,
    direction = "horizontal",
    close_on_exit = true,
    shell = "/bin/zsh",

    float_opts = {
      border = "single",
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
      winblend = 0,
    },

    highlights = {
      FloatBorder = {
        guifg = "#4c4f69",
        -- guibg = "#f5c2e7",
      },
    },
  },
}
