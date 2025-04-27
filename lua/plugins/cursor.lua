return {
  "sphamba/smear-cursor.nvim",
  event = "VeryLazy",
  opts = {
    -- Smear cursor when switching buffers or windows.
    smear_between_buffers = true,
    -- Smear cursor in insert mode.
    smear_insert_mode = true,
    -- Smear cursor color. Defaults to Cursor GUI color if not set.
    cursor_color = "#f5c2e7",
    -- Faster smear animation
    stiffness = 0.8,
    trailing_stiffness = 0.5,
    stiffness_insert_mode = 0.6,
    trailing_stiffness_insert_mode = 0.6,
    distance_stop_animating = 0.5,
    -- Smooth cursor without smear
    -- stiffness = 0.5,
    -- trailing_stiffness = 0.5,
    -- never_draw_over_target = false,
  },
}
