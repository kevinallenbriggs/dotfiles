return {
    {
        "karb94/neoscroll.nvim",
        opts = {
            mappings = {
                "<C-u>",
                "<C-d>",
                "<C-b>",
                "<C-f>",
            },

            hide_cursor = true,
            stop_eof = true,
            respect_scrolloff = false,
            cursor_scrolls_alone = true,

            duration_multiplier = 0.5,
            easing = "quadratic",
        },
    },
}
