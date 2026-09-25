return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            options = {
                mode = "buffers",

                -- Always show the tab bar.
                always_show_bufferline = true,

                -- Show filetype icons.
                show_buffer_icons = true,

                -- Show a close button on each buffer.
                show_buffer_close_icons = true,

                -- Show the overall close button.
                show_close_icon = false,

                -- Don't show buffer numbers.
                numbers = "none",
                -- numbers = "ordinal",

                -- Keep buffers in the order they were opened.
                sort_by = "insert_after_current",

                -- Use a simple separator.
                separator_style = "thin",

                -- Allow the tab bar to be hidden when appropriate.
                enforce_regular_tabs = false,

                -- Mouse support.
                hover = {
                    enabled = true,
                    delay = 200,
                    reveal = { "close" },
                },
            },
        },
    },
}
