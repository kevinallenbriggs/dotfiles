return {
    {
        "kana/vim-textobj-user",
        lazy = true,
    },

    {
        "whatyouhide/vim-textobj-xmlattr",
        dependencies = {
            "kana/vim-textobj-user",
        },
        ft = {
            "html",
            "xml",
            "xhtml",
        },
    },

    {
        "tpope/vim-repeat",
        event = "VeryLazy",
    },

    {
        "bronson/vim-visual-star-search",
        event = "VeryLazy",
    },
}
