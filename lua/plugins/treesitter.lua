return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
		opts = {
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"html",
				"css",
				"json",
				"lua",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = false },
		},
	},
}
