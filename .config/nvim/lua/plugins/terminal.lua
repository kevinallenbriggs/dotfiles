return {
    {
        -- ToggleTerm provides persistent terminal windows inside Neovim.
        -- We use it primarily as a floating terminal for development commands.
        "akinsho/toggleterm.nvim",

        -- Use the latest stable release rather than pinning to a specific version.
        version = "*",

        opts = {
            -- Height/size used for the terminal window.
            -- This is mainly relevant to non-floating terminal layouts.
            size = 20,

            -- Open the terminal as a floating window instead of a split.
            direction = "float",

            -- Settings specific to the floating terminal window.
            float_opts = {
                -- Use a rounded border around the floating window.
                border = "rounded",

                -- Window transparency. 0 means fully opaque.
                winblend = 0,
            },

            -- Automatically close the terminal window when the shell exits.
            close_on_exit = true,

            -- Enter Insert mode automatically when the terminal opens.
            -- This lets us start typing shell commands immediately.
            start_in_insert = true,

            -- Remember the terminal window's size between toggles.
            persist_size = true,

            -- Remember whether the terminal was in Insert or Normal mode.
            persist_mode = true,

            -- Determine the directory where the terminal starts.
            --
            -- First try to find the root of the Git repository containing
            -- the current working directory. This means a terminal opened
            -- anywhere inside a project starts at the project's Git root.
            --
            -- If the current directory is not inside a Git repository,
            -- fall back to Neovim's current working directory.
            dir = function()
                local git_dir = vim.fn.systemlist("git rev-parse --show-toplevel")[1]

                -- vim.v.shell_error is 0 when the Git command succeeded.
                -- Also make sure Git actually returned a directory.
                if vim.v.shell_error == 0 and git_dir and git_dir ~= "" then
                    return git_dir
                end

                -- No Git repository was found, so use Neovim's current
                -- working directory instead.
                return vim.fn.getcwd()
            end,
        },
    },
}
