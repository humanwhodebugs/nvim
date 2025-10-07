return {
  {
    "rachartier/tiny-inline-diagnostic.nvim", -- Display prettier diagnostic messages. Display diagnostic messages where the cursor is, with icons and colors.
    event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

    config = function()
      require("tiny-inline-diagnostic").setup({
        preset = "modern",
        transparent_bg = true,
        transparent_cursorline = true,

        hi = {
          error = "DiagnosticError",
          warn = "DiagnosticWarn",
          info = "DiagnosticInfo",
          hint = "DiagnosticHint",
          arrow = "NonText",
          background = "#eff1f5",
          mixing_color = "Normal",
        },

        options = {
          show_source = {
            enabled = false,
            if_many = false,
          },

          use_icons_from_diagnostic = false,
          set_arrow_to_diag_color = false,
          add_messages = true,
          throttle = 20,
          softwrap = 30,

          multilines = {
            enabled = true,
            always_show = false,
            trim_whitespaces = false,
            tabstop = 4,
          },

          show_all_diags_on_cursorline = false,
          enable_on_insert = false,
          enable_on_select = false,

          overflow = {
            mode = "wrap",
            padding = 0,
          },

          break_line = {
            enabled = false,
            after = 30,
          },

          format = nil,

          virt_texts = {
            priority = 2048,
          },

          severity = {
            vim.diagnostic.severity.ERROR,
            vim.diagnostic.severity.WARN,
            vim.diagnostic.severity.INFO,
            vim.diagnostic.severity.HINT,
          },

          overwrite_events = nil,
        },
        disabled_ft = {},
      })
      vim.diagnostic.config({ virtual_text = false })
    end,
  },
}
