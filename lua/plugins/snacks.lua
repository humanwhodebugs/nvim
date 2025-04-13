return {
  -- Define the plugin to be loaded
  "folke/snacks.nvim",
  event = "VimEnter",

  opts = {
    dashboard = {
      preset = {
        -- ASCII art for the dashboard header
        header = [[
⡇⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⢁⣿⣿⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⢹⣇⠉⠉⢳⣌⢉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠇⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣧⠀⠀⢻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣰⠀⠀⢸⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣷⣄⠀⠹⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⢸⢸⣿⡿⠿⢃⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠻⠿⣿⣦⣀⠙⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣛⣋⡄⢨⣨⣶⣶⣶⣷⡶⡀⠀⠀⠀⠀⠀⢀⠀⢿⣷⣶⣶⣶⣶⣷⣤⣭⡅⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⡄⣇⣟⠿⣿⣿⣷⣱⡀⠀⠀⠀⠀⢸⡄⢸⣿⠿⢛⠛⠛⠻⢿⡟⣽⠆⡀⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠂⠀⠀⠓⠀⠐⠒⠈⠻⣷⣌⠟⣿⣧⣵⡐⡄⠀⠀⠸⡿⠀⠀⠀⢀⡀⠀⠀⠀⠈⠃⢜⡁⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡐⠀⠀⠠⠤⠀⠀⠈⠻⣦⣽⣿⣿⣷⡜⠆⠀⠀⣵⡆⠀⠈⠛⠁⠀⠀⢢⡀⠘⢿⡇⠀⠀⠀⠀⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⢀⢡⡀⢀⢠⠀⠀⠆⡀⣿⣧⣼⣿⣿⣿⣿⣯⣼⣷⣄⠸⣇⢠⣲⣤⣜⣠⢀⣾⠟⣠⣾⣇⠀⠀⣠⣤⠀⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠈⠆⣩⣈⠻⣿⣿⠞⣡⡿⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣜⡢⢝⣻⠛⠋⠵⠖⠖⣢⣿⡇⠀⠀⣭⡹⣇⠀⠀⡇
⡇⠀⠀⠀⠀⠀⠀⠀⠀⠰⣶⣭⣛⣓⣂⣭⣵⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡖⢶⠒⠿⠷⢿⣿⣿⡇⠀⠈⣿⢡⣿ ⠀⡇
⡇ ⠀⠀⠀⠀⠀⠀⠀⠀⠉⣋⠉⣫⣼⣿⣿⣿⣿⣿⣿⣿⡿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣶⣶⣾⣿⣿⠀⢀⡠⢟⣼⠏ ⠀⡇
⡇⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⢀⣼⡰⢛⣁⣀⣀⣀⡇
]],

        -- Define key bindings for the dashboard
        keys = {
          --  {
          --    icon = " ", -- Icon representing configuration
          --    key = "c", -- Keybinding to trigger the action
          --    desc = "配置", -- Configuration
          --    action = ":e $MYVIMRC", -- Open the Neovim configuration file
          --  },
          {
            icon = "󰒲 ", -- Icon representing Lazy plugin manager
            key = "l",
            desc = "Lazy 插件管理器", -- Lazy Plugin Manager
            action = ":Lazy", -- Open Lazy.nvim plugin manager
          },
          {
            icon = "󰙅 ", -- Icon representing Neo-tree file explorer
            key = "n",
            desc = "文件管理器", -- File Explorer (Neo-tree)
            action = ":Neotree toggle", -- Toggle Neo-tree file explorer
          },
          {
            icon = " ", -- Icon representing recent files
            key = "r",
            desc = "最近文件", -- Recent Files
            action = ":lua Snacks.dashboard.pick('oldfiles')",
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
        { section = "header", align = "center" }, -- Display the ASCII header at the top
        { section = "keys", gap = 1, padding = 1 }, -- Display key bindings with spacing
        { title = "没有人还能记起白日的痛楚", align = "center" }, -- Display a centered title
      },
    },

    -- Indentation Guide Settings
    indent = {
      priority = 1, -- Indentation priority
      enabled = true, -- Enable indent guides
      char = "│", -- Character used for indent guides
      only_scope = false, -- Show indent guides only within the scope
      only_current = false, -- Show indent guides only in the current window
      hl = "SnacksIndent", -- Highlight group for indent guides
    },

    -- Scroll Animation Settings
    scroll = {
      animate = {
        duration = { step = 15, total = 250 }, -- Animation duration for scrolling
        easing = "linear", -- Easing function for scroll animation
      },
      -- Faster animation when repeating scroll after delay
      animate_repeat = {
        delay = 100, -- Delay in ms before using the repeat animation
        duration = { step = 5, total = 50 }, -- Repeat animation duration
        easing = "linear", -- Easing function for repeat animation
      },
    },

    -- Notification settings
    notifier = { enabled = true, timeout = 3000, style = "fancy" },

    -- Picker layout configuration
    picker = {
      layout = {
        layout = {
          box = "horizontal", -- Layout orientation
          width = 0.8, -- Width of the picker box
          min_width = 120, -- Minimum width of the picker box
          height = 0.8, -- Height of the picker box
          {
            box = "vertical", -- Vertical layout for sub-boxes
            border = "single", -- Border style for sub-boxes
            title = "{title} {live} {flags}", -- Title format for sub-boxes
            { win = "input", height = 1, border = "bottom" }, -- Input window configuration
            { win = "list", border = "none" }, -- List window configuration
          },
          { win = "preview", title = "{preview}", border = "single", width = 0.5 }, -- Preview window configuration
        },
      },
    },

    -- UI styles for notifications
    styles = {
      notification = {
        border = "single", -- Border style for notifications
        zindex = 100, -- Z-index for the notification window
        ft = "markdown", -- Filetype for notification window
        wo = {
          winblend = 5, -- Window transparency
          wrap = false, -- Disable text wrapping
          conceallevel = 2, -- Conceal level for text
          colorcolumn = "", -- Disable color column
        },
        bo = { filetype = "snacks_notif" }, -- Filetype for buffer options
      },
      notification_history = {
        border = "single", -- Border style for notification history
        zindex = 100, -- Z-index for notification history window
        width = 0.6, -- Width of the notification history window
        height = 0.6, -- Height of the notification history window
        minimal = false, -- Show minimal history or full history
        title = " Notification History ", -- Title of the notification history window
        title_pos = "center", -- Title position
        ft = "markdown", -- Filetype for notification history window
        bo = { filetype = "snacks_notif_history", modifiable = false }, -- Buffer options for notification history
        wo = { winhighlight = "Normal:SnacksNotifierHistory" }, -- Window options for notification history
        keys = { q = "close" }, -- Key binding to close notification history
      },
    },
  },
}
