return {
  {
    "echasnovski/mini.pairs",
    version = "*", -- Always use the latest version
    event = "VeryLazy", -- Load this plugin during idle time to improve startup performance
    opts = {
      modes = {
        insert = true, -- Enable in insert mode
        command = false, -- Disable in command-line mode
        terminal = false, -- Disable in terminal mode
      },
      mappings = {
        ["("] = { action = "open", pair = "()", neigh_pattern = "[^\\]." }, -- Auto-insert closing ")"
        ["["] = { action = "open", pair = "[]", neigh_pattern = "[^\\]." }, -- Auto-insert closing "]"
        ["{"] = { action = "open", pair = "{}", neigh_pattern = "[^\\]." }, -- Auto-insert closing "}"
        [")"] = { action = "close", pair = "()", neigh_pattern = "[^\\]." }, -- Skip if already closed
        ["]"] = { action = "close", pair = "[]", neigh_pattern = "[^\\]." }, -- Skip if already closed
        ["}"] = { action = "close", pair = "{}", neigh_pattern = "[^\\]." }, -- Skip if already closed
        ['"'] = {
          action = "closeopen", -- Auto close and reopen if needed
          pair = '""',
          neigh_pattern = "[^\\].",
          register = { cr = false }, -- Disable special behavior for Enter
        },
        ["'"] = {
          action = "closeopen",
          pair = "''",
          neigh_pattern = "[^%a\\].", -- Avoid auto-pair inside words
          register = { cr = false },
        },
        ["`"] = {
          action = "closeopen",
          pair = "``",
          neigh_pattern = "[^\\].",
          register = { cr = false },
        },
      },
    },
  },
}
