return {
  {
    "neovim/nvim-lspconfig", -- collection of LSP server configurations
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact", "lua", "html", "css", "json" }, -- Load this plugin based on filetypes

    config = function()
      -- Configuration for TypeScript & JavaScript LSP (using ts_ls because tsserver has issues)
      vim.lsp.config("ts_ls", {
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for ESLint (linter for JavaScript & TypeScript)
      vim.lsp.config("eslint", {
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP HTML
      vim.lsp.config("html", {
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP CSS
      vim.lsp.config("cssls", {
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP JSON
      vim.lsp.config("jsonls", {
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP Tailwind CSS
      vim.lsp.config("tailwindcss", {
        filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
        on_attach = function(client, bufnr)
          -- Set keymaps or other configurations
        end,
      })

      -- Configuration for LSP Lua (lua_ls)
      vim.lsp.config("lua_ls", {
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
    "mason-org/mason.nvim", -- Easily install and manage LSP servers, DAP servers, linters, and formatters
    event = "VimEnter", -- Load this plugin when entering Neovim

    config = function()
      require("mason").setup({
        ui = {
          border = "single",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
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
    "mason-org/mason-lspconfig.nvim", -- Extension to mason.nvim that makes it easier to use lspconfig with mason.nvim
    event = { "BufReadPre", "BufNewFile" }, -- Load this plugin when opening a buffer

    opts = {
      ensure_installed = { "lua_ls", "ts_ls", "eslint", "html", "cssls", "jsonls", "tailwindcss" },
    },
  },
}
