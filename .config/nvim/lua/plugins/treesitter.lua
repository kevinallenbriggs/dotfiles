return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "php",
                "javascript",
                "typescript",
                "html",
                "css",
                "json",
                "yaml",
                "bash",
                "lua",
                "markdown",
            },

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
        },
    },
}
