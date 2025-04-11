return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy", -- Enabling Lazy Load
  dependencies = { "nvim-tree/nvim-web-devicons", "catppuccin/nvim" },
  opts = function(_, opts)
    -- Apply Catppuccin theme highlights only if the colorscheme is set to "catppuccin"
    if vim.g.colors_name and vim.g.colors_name:find("catppuccin") then
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    end

    opts.options = {
      -- Determines the appearance of the separators between buffers.
      -- Available styles:
      -- "slant"         - Angled separators (default look)
      -- "padded_slant"  - Slanted with extra padding
      -- "thick"         - Thick vertical bars as separators
      -- "thin"          - Thin vertical bars as separators
      separator_style = { "|", "|" },
      indicator = { style = "none" },
      show_close_icon = false, -- Hide the global close icon
      show_buffer_icons = true, -- Show file-type icons on buffers
      show_buffer_close_icons = false, -- Hide close icons on individual buffers
      always_show_bufferline = false, -- Hide bufferline when only one buffer is open

      offsets = {
        {
          filetype = "neo-tree",
          text = "File Explorer",
          highlight = "Directory",
          text_align = "center",
        },
      },
    }

    return opts
  end,
}
