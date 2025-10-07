return {
  {
    "folke/noice.nvim", -- Highly experimental plugin that completely replaces the UI for messages, cmdline and the popupmenu
    event = "VimEnter", -- Load this plugin when entering Neovim
    dependencies = {
      "MunifTanjim/nui.nvim",
    },

    config = function()
      require("noice").setup({
        lsp = {
          progress = {
            enabled = true,
          },

          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
          },
        },

        presets = {
          bottom_search = true,
          command_palette = false,
          long_message_to_split = true,
          lsp_doc_border = true,
        },

        cmdline = {
          view = "cmdline",

          format = {
            cmdline = { pattern = "^:", icon = "", lang = "vim" },
            search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
            search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
            filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
            lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },
            help = { pattern = "^:%s*he?l?p?%s+", icon = "?" },
            input = { view = "cmdline", icon = "󰥻 " },
          },
        },

        views = {
          hover = {
            border = { style = "single" },
          },
        },
      })
    end,
  },
}
