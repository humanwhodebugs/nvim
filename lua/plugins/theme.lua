return {
	{
		"catppuccin/nvim", -- Plugin repository
		name = "catppuccin", -- Custom name for the plugin
		lazy = false, -- Load the plugin immediately (not lazily)
		priority = 1000, -- High priority to ensure the theme loads first
		opts = {
			flavour = "mocha", -- Set the Catppuccin theme flavor (mocha, latte, etc.)
			background = {
				light = "mocha", -- Set the background theme for light mode
				dark = "mocha", -- Set the background theme for dark mode
			},
			transparent_background = true, -- Enable transparent background
			show_end_of_buffer = false, -- Do not show `~` at the end of the buffer
			term_colors = false, -- Disable terminal colors override
			dim_inactive = {
				enabled = false, -- Do not dim inactive windows
				shade = "dark", -- Shade type if dimming was enabled
				percentage = 0.15, -- Dimming percentage (not applied here)
			},
			no_italic = false, -- Allow italic styles
			no_bold = false, -- Allow bold styles
			no_underline = false, -- Allow underlined text
			styles = { -- Define text styles for different syntax groups
				comments = { "italic" }, -- Italicize comments
				conditionals = { "italic" }, -- Italicize conditionals (if, else, etc.)
				loops = {}, -- No specific style for loops
				functions = {}, -- No specific style for functions
				keywords = {}, -- No specific style for keywords
				strings = {}, -- No specific style for strings
				variables = {}, -- No specific style for variables
				numbers = {}, -- No specific style for numbers
				booleans = {}, -- No specific style for booleans
				properties = {}, -- No specific style for properties
				types = {}, -- No specific style for types
				operators = {}, -- No specific style for operators
			},
			integrations = { -- Enable integration with various plugins
				bufferline = true, -- Enable integration with Bufferline
				mason = true, -- Enable integration with Mason
				neotree = true, -- Enable integration with Neo-tree
				treesitter = true, -- Enable integration with Treesitter
				snacks = {
					enabled = true, -- Enable integration with snacks.nvim
					indentscope_color = "pink", -- Set the indent scope color to pink
				},
			},

			custom_highlights = function()
				return {
					NeoTreeWinSeparator = { fg = "#f5c2e7" }, -- Set separator color for Neo-tree
					FloatBorder = { fg = "#f5c2e7" }, -- Set border color for floating windows
					WinSeparator = { fg = "#f5c2e7" }, -- Set separator color between windows
				}
			end,
		},
	},
}
