return {
  {
    "neovim/nvim-lspconfig",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "lua", "html", "css", "json" },
    config = function()
      local lspconfig = require("lspconfig")

      -- Configuration for TypeScript & JavaScript LSP (using ts_ls because tsserver has issues)
      lspconfig.ts_ls.setup({
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for ESLint (linter for JavaScript & TypeScript)
      lspconfig.eslint.setup({
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP HTML
      lspconfig.html.setup({
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP CSS
      lspconfig.cssls.setup({
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP JSON
      lspconfig.jsonls.setup({
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP Tailwind CSS
      lspconfig.tailwindcss.setup({
        filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP Lua (lua_ls)
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
            },
            diagnostics = {
              globals = { "vim" },
            },
            telemetry = {
              enable = false,
            },
          },
        },
      })
    end,
  },

  -- Mason and Mason LSPConfig plugin still uses opts
  {
    "mason-org/mason.nvim",
    event = "VimEnter",
    config = function()
      -- Setup mason with UI settings and icons
      require("mason").setup({
        ui = {
          border = "single", -- Set border for Mason UI
          icons = {
            package_installed = "✓", -- Icon for installed packages
            package_pending = "➜", -- Icon for packages being processed
            package_uninstalled = "✗", -- Icon for uninstalled packages
          },
        },
      })

      -- Auto install tools (formatters) if not installed
      local mason_registry = require("mason-registry")
      local tools = { "prettierd", "stylua", "shfmt" }

      -- Check and install tools if not present
      for _, tool in ipairs(tools) do
        local ok, package = pcall(mason_registry.get_package, tool)
        if ok and not package:is_installed() then
          package:install()
        end
      end
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "eslint", "html", "cssls", "jsonls", "tailwindcss" },
    },
  },
}
