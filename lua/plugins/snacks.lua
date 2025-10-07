return {
  "folke/snacks.nvim", -- Collection of QoL plugins
  event = "VimEnter", -- Load this plugin when entering Neovim

  opts = {
    dashboard = {
      preset = {
        header = [[
███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
]],

        keys = {
          {
            icon = " ",
            key = "c",
            desc = "Configuration",
            action = ":e $MYVIMRC",
          },

          {
            icon = "󰒲 ",
            key = "l",
            desc = "Lazy Plugin Manager",
            action = ":Lazy",
          },

          {
            icon = "󰙅 ",
            key = "n",
            desc = "Neo-Tree",
            action = ":Neotree toggle",
          },

          {
            icon = " ",
            key = "r",
            desc = "Recent Files",
            action = ":lua Snacks.dashboard.pick('oldfiles')",
          },

          {
            icon = " ",
            key = "q",
            desc = "Quit Neovim",
            action = ":qa",
          },
        },
      },

      -- Define the layout of sections on the dashboard
      sections = {
        { section = "header", align = "center" },
        { section = "keys", gap = 1, padding = 1 },
        { title = "rei@AestheticArch", align = "center" },
      },
    },

    indent = {
      priority = 1,
      enabled = true,
      char = "│",
      only_scope = false,
      only_current = false,
      hl = "SnacksIndent",
    },

    scroll = {
      animate = {
        duration = { step = 15, total = 250 },
        easing = "linear",
      },

      animate_repeat = {
        delay = 100,
        duration = { step = 5, total = 50 },
        easing = "linear",
      },
    },

    notifier = { enabled = true, timeout = 3000, style = "compact" },

    picker = {
      layout = {
        preview = "main",

        layout = {
          backdrop = false,
          width = 40,
          min_width = 40,
          height = 0,
          position = "left",
          border = "none",
          box = "vertical",

          {
            win = "input",
            height = 1,
            border = "single",
            title = "{title} {live} {flags}",
            title_pos = "center",
          },

          {
            win = "list",
            border = "none",
          },

          {
            win = "preview",
            title = "{preview}",
            height = 0.4,
            border = "top",
          },
        },
      },
    },

    styles = {
      dashboard = {
        zindex = 10,
        height = 0,
        width = 0,

        bo = {
          bufhidden = "wipe",
          buftype = "nofile",
          buflisted = false,
          filetype = "snacks_dashboard",
          swapfile = false,
          undofile = false,
        },

        wo = {
          colorcolumn = "",
          cursorcolumn = false,
          cursorline = false,
          foldmethod = "manual",
          list = false,
          number = false,
          relativenumber = false,
          sidescrolloff = 0,
          signcolumn = "no",
          spell = false,
          statuscolumn = "",
          statusline = "",
          winbar = "",
          winhighlight = "Normal:WinSeparator,NormalFloat:SnacksDashboardNormal",
          wrap = false,
        },
      },

      notification = {
        border = "single",
        zindex = 100,
        ft = "markdown",

        wo = {
          winblend = 5,
          wrap = false,
          conceallevel = 2,
          colorcolumn = "",
        },

        bo = { filetype = "snacks_notif" },
      },

      notification_history = {
        border = "single",
        zindex = 100,
        width = 0.6,
        height = 0.6,
        minimal = false,
        title = " Notification History ",
        title_pos = "center",
        ft = "markdown",
        bo = { filetype = "snacks_notif_history", modifiable = false },
        wo = { winhighlight = "Normal:SnacksNotifierHistory" },
        keys = { q = "close" },
      },
    },
  },
}
