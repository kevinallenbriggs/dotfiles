return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            local telescope = require("telescope")
            local builtin = require("telescope.builtin")

            telescope.setup({
                defaults = {
                    layout_strategy = "flex",
                    sorting_strategy = "ascending",

                    layout_config = {
                        prompt_position = "top",
                    },

                    file_ignore_patterns = {
                        "node_modules",
                        "vendor",
                        "%.git/",
                    },
                },

                pickers = {
                    find_files = {
                        hidden = true,
                    },
                },
            })

            telescope.load_extension("fzf")

            local map = vim.keymap.set
            local opts = { noremap = true, silent = true }

            -- Find files
            map("n", "<leader>ff", builtin.find_files, opts)

            -- Search text throughout the project
            map("n", "<leader>fg", builtin.live_grep, opts)

            -- Open recently used files
            map("n", "<leader>fr", builtin.oldfiles, opts)

            -- Search currently open buffers
            map("n", "<leader>fb", builtin.buffers, opts)

            -- Search help
            map("n", "<leader>fh", builtin.help_tags, opts)

            -- Search diagnostics
            map("n", "<leader>fd", builtin.diagnostics, opts)

            -- Search keymaps
            map("n", "<leader>fk", builtin.keymaps, opts)
        end,
    },
}
