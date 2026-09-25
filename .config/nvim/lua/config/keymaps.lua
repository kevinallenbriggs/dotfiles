local map = vim.keymap.set

local opts = {
    noremap = true,
    silent = true,
}

-- ============================================================================
-- Leader groups
-- ============================================================================

map("n", "<leader>b", "<Nop>", {
    desc = "Buffers",
})

map("n", "<leader>c", "<Nop>", {
    desc = "Code",
})

map("n", "<leader>d", "<Nop>", {
    desc = "Diagnostics",
})

map("n", "<leader>f", "<Nop>", {
    desc = "Find",
})

map("n", "<leader>g", "<Nop>", {
    desc = "Git",
})

map("n", "<leader>l", "<Nop>", {
    desc = "LSP",
})

-- ============================================================================
-- General
-- ============================================================================

map("n", "<leader>w", "<cmd>w<CR>", {
    noremap = true,
    silent = true,
    desc = "Save file",
})

map("n", "<leader>q", "<cmd>bdelete<CR>", {
    noremap = true,
    silent = true,
    desc = "Close Buffer",
})

map("i", "kj", "<Esc>", {
    noremap = true,
    silent = true,
    desc = "Exit insert mode",
})

map("n", "<Esc>", "<cmd>nohlsearch<CR>", {
    noremap = true,
    silent = true,
    desc = "Clear search highlight",
})

-- ============================================================================
-- Window navigation
-- ============================================================================

map("n", "<C-h>", "<C-w>h", {
    noremap = true,
    silent = true,
    desc = "Move to left window",
})

map("n", "<C-j>", "<C-w>j", {
    noremap = true,
    silent = true,
    desc = "Move to lower window",
})

map("n", "<C-k>", "<C-w>k", {
    noremap = true,
    silent = true,
    desc = "Move to upper window",
})

map("n", "<C-l>", "<C-w>l", {
    noremap = true,
    silent = true,
    desc = "Move to right window",
})

-- ============================================================================
-- Window resizing
-- ============================================================================

map("n", "<C-Up>", "<cmd>resize +2<CR>", {
    noremap = true,
    silent = true,
    desc = "Increase window height",
})

map("n", "<C-Down>", "<cmd>resize -2<CR>", {
    noremap = true,
    silent = true,
    desc = "Decrease window height",
})

map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", {
    noremap = true,
    silent = true,
    desc = "Decrease window width",
})

map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", {
    noremap = true,
    silent = true,
    desc = "Increase window width",
})

-- ============================================================================
-- Visual selection
-- ============================================================================

map("v", "J", ":m '>+1<CR>gv=gv", {
    noremap = true,
    silent = true,
    desc = "Move selection down",
})

map("v", "K", ":m '<-2<CR>gv=gv", {
    noremap = true,
    silent = true,
    desc = "Move selection up",
})

-- ============================================================================
-- Navigation
-- ============================================================================

-- map("n", "<C-d>", "<C-d>zz", {
--     noremap = true,
--     silent = true,
--     desc = "Scroll down and center",
-- })
--
-- map("n", "<C-u>", "<C-u>zz", {
--     noremap = true,
--     silent = true,
--     desc = "Scroll up and center",
-- })

map("n", "n", "nzzzv", {
    noremap = true,
    silent = true,
    desc = "Next search result",
})

map("n", "N", "Nzzzv", {
    noremap = true,
    silent = true,
    desc = "Previous search result",
})

-- ============================================================================
-- Buffers
-- ============================================================================

-- Jump to the previously used buffer
map("n", "<Tab>", "<C-^>", {
    noremap = true,
    silent = true,
    desc = "Toggle between buffers",
})

-- Close the current buffer
map("n", "<leader>bx", "<cmd>bdelete<CR>", {
    noremap = true,
    silent = true,
    desc = "Close the current buffer",
})

-- Jump to buffer
for i = 1, 9 do
    map(
        "n",
        "<leader>b" .. i,
        "<cmd>BufferLineGoToBuffer " .. i .. "<CR>",
        {
            noremap = true,
            silent = true,
            desc = "Go to buffer " .. i,
        }
    )
end

-- ============================================================================
-- File explorer
-- ============================================================================

map("n", "<leader>e", "<cmd>Oil<CR>", {
    noremap = true,
    silent = true,
    desc = "File explorer",
})

-- ============================================================================
-- Telescope
-- ============================================================================

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", {
    noremap = true,
    silent = true,
    desc = "Find files",
})

map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", {
    noremap = true,
    silent = true,
    desc = "Live grep",
})

map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", {
    noremap = true,
    silent = true,
    desc = "Find buffers",
})

map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", {
    noremap = true,
    silent = true,
    desc = "Find help",
})

-- ============================================================================
-- Git
-- ============================================================================

map("n", "<leader>gg", "<cmd>LazyGit<CR>", {
    noremap = true,
    silent = true,
    desc = "LazyGit",
})

-- ============================================================================
-- Diagnostics
-- ============================================================================

map("n", "<leader>dd", vim.diagnostic.open_float, {
    noremap = true,
    silent = true,
    desc = "Show diagnostic",
})

map("n", "]d", vim.diagnostic.goto_next, {
    noremap = true,
    silent = true,
    desc = "Next diagnostic",
})

map("n", "[d", vim.diagnostic.goto_prev, {
    noremap = true,
    silent = true,
    desc = "Previous diagnostic",
})

map("n", "<leader>dq", vim.diagnostic.setqflist, {
    noremap = true,
    silent = true,
    desc = "Diagnostics to quickfix",
})


-- ============================================================================
-- Terminal
-- ============================================================================

map("n", "<leader>tt", "<cmd>ToggleTerm<CR>", {
    noremap = true,
    silent = true,
    desc = "Toggle floating terminal",
})

-- Exit insert mode in the terminal
map("t", "kj", [[<C-\><C-n>]], {
    noremap = true,
    silent = true,
    desc = "Exit terminal mode",
})
