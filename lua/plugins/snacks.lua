return {
  -- Define the plugin to be loaded
  "folke/snacks.nvim",
  event = "VimEnter",

  opts = {
    dashboard = {
      preset = {
        -- ASCII art for the dashboard header
        header = [[
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⣠⣄⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⠏⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀
⠀⠀⠀⠀⣀⡤⣤⠶⠛⠉⠉⠀⠀⠉⠉⠛⠲⣤⣤⣄⠀⠀⠀⠀⠀
⠀⠀⠀⡼⠃⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠈⢧⠀⠀⠀⠀
⠀⠀⡼⢁⡆⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡄⠀⢰⡈⢧⠀⠀⠀
⢀⡞⠁⣸⠁⠀⢠⠬⠓⠀⣀⠀⠀⢀⠀⠛⠥⣄⠀⠀⡇⠈⢳⡀⠀
⡞⠀⠀⠹⣆⢰⣒⠆⠀⠀⠓⠊⠙⠚⠁⠀⠸⠭⠇⣰⠇⠀⠀⢻⠀
⣇⠀⠀⠀⠈⣹⠶⠦⠤⠤⣤⣤⣤⡤⠤⠤⠴⠶⣏⠁⠀⠀⠀⣸⠁
⠈⠓⠲⠖⠚⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠓⠲⠶⠚⠁⠀
]],

        -- Define key bindings for the dashboard
        keys = {
          {
            icon = " ", -- Icon representing configuration
            key = "c", -- Keybinding to trigger the action
            desc = "Configuration", -- Configuration
            action = ":e $MYVIMRC", -- Open the Neovim configuration file
          },
          {
            icon = "󰒲 ", -- Icon representing Lazy plugin manager
            key = "l",
            desc = "Lazy Plugin Manager", -- Lazy Plugin Manager
            action = ":Lazy", -- Open Lazy.nvim plugin manager
          },
          {
            icon = "󰙅 ", -- Icon representing Neo-tree file explorer
            key = "n",
            desc = "Neo-Tree", -- File Explorer (Neo-tree)
            action = ":Neotree toggle", -- Toggle Neo-tree file explorer
          },
          {
            icon = " ", -- Icon representing recent files
            key = "r",
            desc = "Recent Files", -- Recent Files
            action = ":lua Snacks.dashboard.pick('oldfiles')",
          },
          {
            icon = " ", -- Icon representing quit action
            key = "q",
            desc = "Quit Neovim", -- Quit Neovim
            action = ":qa", -- Quit Neovim
          },
        },
      },

      -- Define the layout of sections on the dashboard
      sections = {
        { section = "header", align = "center" }, -- Display the ASCII header at the top
        { section = "keys", gap = 1, padding = 1 }, -- Display key bindings with spacing
        { title = "AestheticArch", align = "center" }, -- Display a centered title
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
    notifier = { enabled = true, timeout = 3000, style = "compact" },

    -- Picker layout configuration
    picker = {
      layout = {
        -- Main layout settings for the picker
        preview = "main", -- Set the preview window to be the main window in the layout
        layout = {
          backdrop = false, -- Disable backdrop (no blurred background behind picker)
          width = 40, -- Set the width of the picker layout
          min_width = 40, -- Set the minimum width of the picker window
          height = 0, -- Set the height of the layout (can be adjusted based on content)
          position = "left", -- Set the position of the picker to the left side of the screen
          border = "none", -- No border around the layout
          box = "vertical", -- Set the layout style to vertical (e.g., stack windows on top of each other)

          -- Window configurations for different sections
          {
            win = "input", -- Define the input window section
            height = 1, -- Set the height of the input section
            border = "single", -- Use a single border around the input window
            title = "{title} {live} {flags}", -- Title format for the input window
            title_pos = "center", -- Center the title in the input window
          },
          {
            win = "list", -- Define the list window section (for displaying options)
            border = "none", -- No border around the list window
          },
          {
            win = "preview", -- Define the preview window section (to show previews of selected items)
            title = "{preview}", -- Title for the preview window
            height = 0.4, -- Set the height of the preview window (40% of the parent window)
            border = "top", -- Use a top border for the preview window
          },
        },
      },
    },

    -- UI styles for dashboard and notifications
    -- Hope this fix number line appeared when adding plugins/setting up Neovim for the first time
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
