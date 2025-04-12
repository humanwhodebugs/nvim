return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufRead", "BufNewFile" },
		config = function()
			local lspconfig = require("lspconfig")

			-- Konfigurasi untuk TypeScript & JavaScript LSP (ts_ls karena tsserver bermasalah)
			lspconfig.ts_ls.setup({
				filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk ESLint (linter untuk JavaScript & TypeScript)
			lspconfig.eslint.setup({
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk LSP HTML
			lspconfig.html.setup({
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk LSP CSS
			lspconfig.cssls.setup({
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk LSP JSON
			lspconfig.jsonls.setup({
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk LSP Tailwind CSS
			lspconfig.tailwindcss.setup({
				filetypes = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact" },
				on_attach = function(client, bufnr)
					-- Set keymaps atau konfigurasi lain
				end,
			})

			-- Konfigurasi untuk LSP Lua (lua_ls)
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

	-- Plugin Mason dan Mason LSPConfig tetap menggunakan opts
	{
		"williamboman/mason.nvim",
		event = "VimEnter",
		config = function()
			-- Setup mason dengan pengaturan UI dan ikon
			require("mason").setup({
				ui = {
					border = "single", -- Set border untuk Mason UI
					icons = {
						package_installed = "✓", -- Ikon untuk package yang terinstal
						package_pending = "➜", -- Ikon untuk package yang sedang diproses
						package_uninstalled = "✗", -- Ikon untuk package yang belum terinstal
					},
				},
			})

			-- Auto install tools (formatter) jika belum terinstall
			local mason_registry = require("mason-registry")
			local tools = { "prettierd", "stylua", "shfmt", "black" }

			-- Mengecek dan install tools jika belum ada
			for _, tool in ipairs(tools) do
				local ok, package = pcall(mason_registry.get_package, tool)
				if ok and not package:is_installed() then
					package:install()
				end
			end
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		event = "VimEnter",
		opts = {
			ensure_installed = { "lua_ls", "ts_ls", "eslint", "html", "cssls", "jsonls", "tailwindcss" },
		},
	},
}
