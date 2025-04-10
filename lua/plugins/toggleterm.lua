return {
  "akinsho/toggleterm.nvim", -- Plugin identifier from GitHub
  version = "*", -- Uses the latest available version
  lazy = true, -- Loads the plugin only when needed
  opts = { -- Configuration options for toggleterm
    size = 10, -- Terminal height (in rows or % of screen)
    open_mapping = [[<C-\>]], -- Keyboard shortcut to open terminal (Ctrl+\)
    hide_numbers = true, -- Hides line numbers in the terminal window
    shade_terminals = false, -- Disables shading of terminal windows
    shading_factor = 0, -- Amount of shading (0 means no shading)
    start_in_insert = true, -- Starts terminal in insert mode
    persist_size = true, -- Remembers terminal size between sessions
    direction = "horizontal", -- Terminal opens horizontally (alternatives: vertical, float, tab)
    close_on_exit = true, -- Closes terminal when shell exits
    shell = "/bin/zsh", -- Sets zsh as the default shell
    float_opts = { -- Options for floating terminal windows
      border = "single", -- Sets single-line border for floating windows
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder", -- Highlight groups for floating window
      winblend = 0, -- Transparency level (0 = opaque)
    },
    highlights = { -- Custom highlight groups
      FloatBorder = { -- Customizes the floating border appearance
        guifg = "#f5c2e7", -- Sets the foreground color to a light pink
        -- guibg = "#f5c2e7", -- Background color (commented out)
      },
    },
  },
}
