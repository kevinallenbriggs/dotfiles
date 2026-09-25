return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "mason-org/mason.nvim",
            "mason-org/mason-lspconfig.nvim",
            "hrsh7th/cmp-nvim-lsp",
            "ray-x/lsp_signature.nvim",
        },
        config = function()
            require("mason").setup()

            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            vim.lsp.config("intelephense", {
                capabilities = capabilities,

                settings = {
                    intelephense = {
                        stubs = {
                            "Core",
                            "standard",
                            "wordpress",
                        },
                    },
                },
            })

            vim.lsp.enable("intelephense")

            require("lsp_signature").setup({
                bind = true,

                floating_window = true,

                handler_opts = {
                    border = "rounded",
                },

                -- Keep the signature visible while working
                -- through the arguments.
                fix_pos = false,

                -- Highlight the parameter currently being entered.
                hi_parameter = "LspSignatureActiveParameter",

                -- Don't add virtual-text parameter hints.
                hint_enable = false,

                -- Let the plugin handle its own signature triggers.
                always_trigger = false,

                -- Intelephense already uses these trigger characters.
                extra_trigger_chars = {
                    "(",
                    ",",
                },

                -- Give the LSP a little time to respond.
                timer_interval = 200,
            })

            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(event)
                    local opts = { buffer = event.buf }

                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
                    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                end,
            })
        end,
    },

    {
        "mason-org/mason.nvim",
        version = "^2.3.1",
    },

    {
        "mason-org/mason-lspconfig.nvim",
    },
}
