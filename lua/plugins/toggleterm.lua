return {
  "akinsho/toggleterm.nvim", -- Plugin identifier from GitHub for Toggleterm
  version = "*", -- Use the latest available version of the plugin
  event = { "BufRead", "BufNewFile" }, -- Trigger the plugin on opening or reading a buffer
  opts = { -- Configuration options for Toggleterm
    size = 10, -- Set the terminal height (in rows or percentage of screen size)
    open_mapping = [[<C-\>]], -- Keyboard shortcut to open the terminal (Ctrl+\)
    hide_numbers = true, -- Hide line numbers in the terminal window
    shade_terminals = false, -- Disable shading for terminal windows
    shading_factor = 0, -- Set shading amount (0 means no shading)
    start_in_insert = true, -- Start the terminal in insert mode by default
    persist_size = true, -- Keep the terminal size consistent across sessions
    direction = "horizontal", -- Open terminal horizontally (alternatives: vertical, float, tab)
    close_on_exit = true, -- Close the terminal window when the shell exits
    shell = "/bin/zsh", -- Set the default shell to zsh
    float_opts = { -- Options for floating terminal windows
      border = "single", -- Set single-line border for floating windows
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- Set highlight groups for floating window
      winblend = 0, -- Set the transparency level for the floating window (0 = no transparency)
    },
    highlights = { -- Custom highlight groups for terminal appearance
      FloatBorder = { -- Customize the floating window border
        guifg = "#4c4f69", -- Set the foreground color for the border
        -- guibg = "#f5c2e7",  -- Background color
      },
    },
  },
}
