return {
  "nvim-neo-tree/neo-tree.nvim", -- Manage the file system and other tree like structures
  event = "VimEnter", -- Load this plugin when entering Neovim
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-tree/nvim-web-devicons", opts = {
      color_icons = false,
      variant = "dark",
    } },
    "MunifTanjim/nui.nvim",
  },

  opts = {
    close_if_last_window = true,
    popup_border_style = "single",
    enable_git_status = false,
    enable_diagnostics = false,

    filesystem = {
      follow_current_file = {
        enabled = true,
      },

      use_libuv_file_watcher = true,
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
      position = "left",
      width = 35,

      mappings = {
        ["l"] = "open",
        ["S"] = "open_split",
        ["s"] = "open_vsplit",
        ["t"] = "open_tabnew",
        ["h"] = "close_node",
        ["R"] = "refresh",
        ["q"] = "close_window",
        ["<Tab>"] = "next_source",
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = true,
          },
        },
      },

      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    },

    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        default = "",
      },

      modified = {
        symbol = "",
        highlight = "NeoTreeModified",
      },

      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "➜",
          untracked = "",
          ignored = "",
          unstaged = "",
          staged = "",
          conflict = "",
        },
      },
    },
  },
}
