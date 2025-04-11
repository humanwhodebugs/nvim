return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = false, -- Close Neo-tree if it's the only open window
    popup_border_style = "single", -- Border style for pop-ups
    enable_git_status = true, -- Show Git status
    enable_diagnostics = true, -- Show diagnostics (errors/warnings from LSP)
    filesystem = {
      follow_current_file = {
        enabled = true, -- Neo-tree follows the currently opened file
      },
      use_libuv_file_watcher = true, -- Auto-refresh when files change
      leave_dirs_open = false,
    },

    window = {
      position = "left",
      width = 35, -- Width of the Neo-tree panel
      mappings = {
        ["<CR>"] = "open", -- Open file
        ["S"] = "open_split", -- Open in horizontal split
        ["s"] = "open_vsplit", -- Open in vertical split
        ["t"] = "open_tabnew", -- Open in a new tab
        ["C"] = "close_node", -- Close folder
        ["R"] = "refresh", -- Refresh Neo-tree
        ["q"] = "close_window", -- Close the Neo-tree panel
        ["P"] = {
          "toggle_preview",
          config = {
            use_float = true, -- Use floating window for preview
            -- title = 'Neo-tree Preview',
          },
        },
      },
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    },

    default_component_configs = {
      icon = {
        folder_closed = "",
        folder_open = "",
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
