return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required dependency for Neo-tree
    { "nvim-tree/nvim-web-devicons", opts = {
      color_icons = false,
      variant = "dark",
    } }, -- Not strictly required, but recommended for file icons
    "MunifTanjim/nui.nvim", -- Required for popup UI elements
  },
  event = "VeryLazy", -- Initialize Neo-tree on VimEnter
  opts = {
    close_if_last_window = true, -- Close Neo-tree if it's the only window open
    popup_border_style = "single", -- Border style for pop-up windows
    enable_git_status = false, -- Show Git status globally
    enable_diagnostics = false, -- Show LSP diagnostics (errors/warnings) globally
    filesystem = {
      follow_current_file = {
        enabled = true, -- Neo-tree will follow the currently opened file
      },
      use_libuv_file_watcher = true, -- Auto-refresh when files change
    },

    event_handlers = {
      {
        event = "file_open_requested",
        handler = function()
          -- Auto-close Neo-tree when a file is opened
          require("neo-tree.command").execute({ action = "close" })
        end,
      },
    },

    -- Source Selector
    source_selector = {
      winbar = true,
      statusline = false,

      sources = {
        { source = "filesystem" },
        { source = "git_status" },
      },

      content_layout = "center",
      tabs_layout = "equal",

      separator = { left = "|", right = "|" },
      separator_active = false,

      highlight_tab_active = "Catppuccin",
      highlight_separator = "Catppuccin",
      highlight_separator_active = "Catppuccin",
    },

    window = {
      position = "left", -- Position the Neo-tree panel on the left
      width = 35, -- Width of the Neo-tree panel
      mappings = {
        ["l"] = "open", -- Open file
        ["S"] = "open_split", -- Open file in horizontal split
        ["s"] = "open_vsplit", -- Open file in vertical split
        ["t"] = "open_tabnew", -- Open file in a new tab
        ["h"] = "close_node", -- Close folder
        ["R"] = "refresh", -- Refresh Neo-tree
        ["q"] = "close_window", -- Close Neo-tree panel
        ["<Tab>"] = "next_source", -- Navigating between source
        ["P"] = {
          "toggle_preview", -- Toggle file preview
          config = {
            use_float = true, -- Use floating window for preview
          },
        },
      },
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- Customize window highlights
    },

    default_component_configs = {
      icon = {
        folder_closed = "", -- Icon for closed folder
        folder_open = "", -- Icon for open folder
        folder_empty = "", -- Icon for empty folder
        default = "", -- Default icon for files
      },
      modified = {
        symbol = "", -- Icon for modified files
        highlight = "NeoTreeModified", -- Highlight group for modified files
      },
      git_status = {
        symbols = {
          added = "✚", -- Added file symbol
          modified = "", -- Modified file symbol
          deleted = "✖", -- Deleted file symbol
          renamed = "➜", -- Renamed file symbol
          untracked = "", -- Untracked file symbol
          ignored = "", -- Ignored file symbol
          unstaged = "", -- Unstaged changes symbol
          staged = "", -- Staged changes symbol
          conflict = "", -- Conflict symbol
        },
      },
    },
  },
}
