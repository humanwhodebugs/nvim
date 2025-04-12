return {
	"stevearc/conform.nvim",
	event = "BufWritePre",
	opts = {
		format_on_save = true, -- Mengaktifkan format otomatis saat file disimpan
		formatters_by_ft = {
			javascript = { "prettierd" },
			typescript = { "prettierd" },
			html = { "prettierd" },
			css = { "prettierd" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			lua = { "stylua" },
			sh = { "shfmt" },
		},
	},
}
