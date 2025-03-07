return {
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
⠀⠀⠀⠀⠀⠀⠀⣠⠔⠒⣢⠔⠒⠂⠁⠒⠒⠒⠤⡀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⠔⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠙⢢⠀⠀⠀⠀⠀⠀
⠀⢀⣀⠤⠂⠁⢠⠀⢠⣤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⡀⠀⠀⠀⠀
⢰⠉⠀⠀⠀⠀⡇⢀⡘⠛⠀⢀⢀⠀⡀⠀⠀⢺⣿⠀⠰⡀⠀⠀⠀⠑⢄⡀⠀⠀
⠸⡀⠀⠀⠀⠀⠘⣮⡚⠀⠀⠀⠀⠈⠁⠀⠀⠀⣒⣤⢦⢣⡀⠀⠀⠀⠀⠈⠑⡄
⠀⠈⠑⠒⠒⠒⠉⠀⠀⠉⢁⠶⠒⠒⠀⠤⠤⠤⢤⡄⠓⠃⠳⣄⠀⠀⠀⠀⠀⡘
⠀⠀⠀⠀⠀⠀⠘⠚⠀⢀⣧⡤⠖⠀⠀⠀⢀⠖⠉⠉⠓⢄⠀⠈⠑⠢⠤⠄⠊⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠇⠀⠀⠀⠀⣇⠀⢠⡊⠰⠈⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠢⠐⠠⠤⢀⣀⣘⠦⠤⠠⠜⠊⠀⠀⠀⠀⠀⠀⠀⠀
]],
          keys = {
            { icon = " ", key = "c", desc = "Config", action = ":e $MYVIMRC" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            {
              icon = "󰙅 ", -- Icon untuk Neo-Tree
              key = "n",
              desc = "Neo-Tree",
              action = ":Neotree toggle",
            },
            { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        snacks = {
          enabled = true,
          indentscope_color = "pink",
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
