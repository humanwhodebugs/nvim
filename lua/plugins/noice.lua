return {
  {
    "folke/noice.nvim",
    event = "VeryLazy", -- Load the plugin lazily when necessary
    dependencies = {
      "MunifTanjim/nui.nvim", -- Dependency for UI components
    },
    config = function()
      require("noice").setup({
        -- Basic configuration
        lsp = {
          progress = {
            enabled = true, -- Enable LSP progress messages
          },
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true, -- Convert LSP input to markdown lines
            ["vim.lsp.util.stylize_markdown"] = true, -- Stylize markdown output for LSP messages
          },
        },
        presets = {
          bottom_search = true, -- Place the command-line search at the bottom
          command_palette = true, -- Combine input for command and search
          long_message_to_split = true, -- Split long messages into a new window
        },
        cmdline = {
          view = "cmdline", -- Use cmdline view for command-line input
        },
      })
    end,
  },
}
