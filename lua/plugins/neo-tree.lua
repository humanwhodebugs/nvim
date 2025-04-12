return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},
	event = "VimEnter",
	opts = {
		close_if_last_window = true, -- Close Neo-tree if it's the only open window
		popup_border_style = "single", -- Border style for pop-ups
		enable_git_status = true, -- Show Git status
		enable_diagnostics = true, -- Show diagnostics (errors/warnings from LSP)
		filesystem = {
			follow_current_file = {
				enabled = true, -- Neo-tree follows the currently opened file
			},
			use_libuv_file_watcher = true, -- Auto-refresh when files change
		},

		event_handlers = {
			{
				event = "file_open_requested",
				handler = function()
					-- auto close
					-- vim.cmd("Neotree close")
					-- OR
					require("neo-tree.command").execute({ action = "close" })
				end,
			},
		},

		window = {
			position = "left",
			width = 35, -- Width of the Neo-tree panel
			mappings = {
				["l"] = "open", -- Open file
				["S"] = "open_split", -- Open in horizontal split
				["s"] = "open_vsplit", -- Open in vertical split
				["t"] = "open_tabnew", -- Open in a new tab
				["h"] = "close_node", -- Close folder
				["R"] = "refresh", -- Refresh Neo-tree
				["q"] = "close_window", -- Close the Neo-tree panel
				["P"] = {
					"toggle_preview",
					config = {
						use_float = true, -- Use floating window for preview
						-- title = 'Neo-tree Preview',
					},
				},
			},
			winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
		},

		default_component_configs = {
			icon = {
				folder_closed = "",
				folder_open = "",
				folder_empty = "",
				default = "",
			},
			modified = {
				symbol = "",
				highlight = "NeoTreeModified",
			},
			git_status = {
				symbols = {
					added = "✚",
					modified = "",
					deleted = "✖",
					renamed = "➜",
					untracked = "",
					ignored = "",
					unstaged = "",
					staged = "",
					conflict = "",
				},
			},
		},
	},
}
