return {
  -- Define the plugin to be loaded
  "folke/snacks.nvim",

  opts = {
    dashboard = {
      preset = {
        -- ASCII art for the dashboard header
        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣤⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣴⠾⠛⠋⠉⠁⠀⠀⠈⠉⠉⠛⠳⢦⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢀⣶⠿⢉⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⡉⠹⣷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⡾⠋⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠈⢻⣆⠀⠀⠀⠀⠀
⠀⠀⠀⠀⢀⣾⠁⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⢻⡄⠀⠀⠀⠀
⠀⠀⠀⢀⡾⠃⢰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣧⠈⢿⣄⠀⠀⠀
⠀⠀⣠⡟⠁⠀⣿⠁⠀⠘⣟⠛⠛⣿⠛⠀⠀⠀⠀⠀⠀⠀⠀⠘⣟⠛⢋⡟⠇⠀⠀⣿⡄⠀⠻⣦⡀⠀
⠀⣸⠏⠀⠀⠀⢿⡄⠂⠀⣿⠀⠀⢹⠃⠀⣿⣠⡴⠦⣤⣻⠆⢠⡇⠀⣸⠃⠀⠀⠀⣿⠀⠀⠀⠘⣷⠀
⢀⣿⠀⠀⠀⠀⠈⢿⣤⡀⣿⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠇⠀⢸⠇⠀⣠⡾⠃⠀⠀⠀⠀⢹⡇
⠈⣿⠀⠀⠀⠀⠀⠀⠈⢿⣷⣷⣆⣹⣄⣀⣀⣀⣀⣀⣀⣀⣇⣀⣸⣇⣶⣿⡿⠉⠀⠀⠀⠀⠀⠀⢸⡇
⠀⠹⣦⡀⠀⠀⠀⢀⣠⡾⠃⠀⠉⠉⠉⠉⠉⠉⠉⠉⠙⠉⠉⠉⠉⠉⠀⠈⠻⣦⣀⠀⠀⠀⢀⣠⡟⠀
⠀⠀⠈⠙⠛⠛⠛⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠛⠛⠛⠛⠉⠀⠀
]],

        -- Define key bindings for the dashboard
        keys = {
          {
            icon = " ", -- Icon representing configuration
            key = "c", -- Keybinding to trigger the action
            desc = "配置", -- Configuration
            action = ":e $MYVIMRC", -- Open the Neovim configuration file
          },
          {
            icon = "󰒲 ", -- Icon representing Lazy plugin manager
            key = "l",
            desc = "Lazy 插件管理器", -- Lazy Plugin Manager
            action = ":Lazy", -- Open Lazy.nvim plugin manager
          },
          {
            icon = "󰙅 ", -- Icon representing Neo-tree file explorer
            key = "n",
            desc = "文件资源管理器", -- File Explorer (Neo-tree)
            action = ":Neotree toggle", -- Toggle Neo-tree file explorer
          },
          {
            icon = " ", -- Icon representing quit action
            key = "q",
            desc = "退出 Neovim", -- Quit Neovim
            action = ":qa", -- Quit Neovim
          },
        },
      },

      -- Define the layout of sections on the dashboard
      sections = {
        { section = "header" }, -- Display the ASCII header at the top
        { section = "keys", gap = 1, padding = 1 }, -- Display key bindings with spacing
        { title = "没有人还能记起白日的痛楚", align = "center" }, -- Display a centered title
      },
    },
  },
}
