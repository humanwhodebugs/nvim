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
          command_palette = false, -- Combine input for command and search
          long_message_to_split = true, -- Split long messages into a new window
          lsp_doc_border = true, -- Borders for LSP Documentations
        },
        cmdline = {
          view = "cmdline", -- Use cmdline view for command-line input
          format = {
            -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.
            -- view: (default is cmdline view)
            -- opts: any options passed to the view
            -- icon_hl_group: optional hl_group for the icon
            -- title: set to anything or empty string to hide
            cmdline = { pattern = "^:", icon = "", lang = "vim" },
            search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
            search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
            filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
            lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
            help = { pattern = "^:%s*he?l?p?%s+", icon = "?" },
            input = { view = "cmdline", icon = "󰥻 " }, -- Used by input()
            -- lua = false, -- to disable a format, set to `false`
          },
        },
        -- Controlling LSP Documentations border style
        views = {
          hover = {
            border = { style = "single" },
          },
        },
      })
    end,
  },
}
