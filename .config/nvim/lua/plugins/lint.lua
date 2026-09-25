return {
    {
        "mfussenegger/nvim-lint",
        event = {
            "BufReadPre",
            "BufNewFile",
        },

        config = function()
            local lint = require("lint")

            lint.linters_by_ft = {
                php = {
                    "phpstan",
                    "phpcs",
                },
            }

            -- Use the project's Composer-installed PHPStan.
            lint.linters.phpstan.cmd = function()
                return vim.fs.joinpath(
                    vim.fn.getcwd(),
                    "vendor",
                    "bin",
                    "phpstan"
                )
            end

            -- Use the project's Composer-installed PHPCS.
            lint.linters.phpcs.cmd = function()
                return vim.fs.joinpath(
                    vim.fn.getcwd(),
                    "vendor",
                    "bin",
                    "phpcs"
                )
            end

            -- -- PHPCS must return machine-readable output for nvim-lint.
            -- lint.linters.phpcs.args = {
            --     "--report=json",
            --     "-",
            -- }
    
            -- Lint after saving.
            vim.api.nvim_create_autocmd("BufWritePost", {
                callback = function()
                    lint.try_lint()
                end,
            })
        end,

        keys = {
            {
                "<leader>ll",
                function()
                    require("lint").try_lint()
                end,
                mode = { "n", "v" },
                desc = "Run linter",
            },
        },
    },
}
