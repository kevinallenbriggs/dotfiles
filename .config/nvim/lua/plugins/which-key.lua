return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            preset = "classic",
            delay = 300,

            spec = {
                { "<leader>f", group = "Find" },
                { "<leader>g", group = "Git" },
                { "<leader>b", group = "Buffers" },
                { "<leader>l", group = "LSP" },
                { "<leader>w", group = "Windows" },
                { "<leader>t", group = "Tools" },
            },
        },
    },
}
