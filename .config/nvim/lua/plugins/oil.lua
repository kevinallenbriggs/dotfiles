return {
    {
        "stevearc/oil.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
        opts = {
            default_file_explorer = true,

            columns = {
                "icon",
                "permissions",
                "size",
                "mtime",
            },

            view_options = {
                show_hidden = true,
            },

            delete_to_trash = true,

            keymaps = {
                ["g?"] = "actions.show_help",
                ["<CR>"] = "actions.select",
                ["<C-s>"] = {
                    "actions.select",
                    opts = { vertical = true },
                },
                ["<C-h>"] = {
                    "actions.select",
                    opts = { horizontal = true },
                },
                ["<C-t>"] = {
                    "actions.select",
                    opts = { tab = true },
                },
                ["<C-p>"] = "actions.preview",
                ["<C-c>"] = "actions.close",
                ["<C-l>"] = "actions.refresh",
                ["-"] = "actions.parent",
                ["_"] = "actions.open_cwd",
                ["g."] = "actions.toggle_hidden",
                ["gx"] = "actions.open_external",
            },
        },
    },
}
