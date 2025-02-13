-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- For conciseness
local defaultOpts = { noremap = true, silent = true }
local function mergeOpts(originalOpts, overrideOpts)
	for k, v in pairs(overrideOpts) do
		originalOpts[k] = v
	end

	return originalOpts
end

-- more convenient way to <Esc>
-- vim.keymap.set("n", "kj", "<Esc>", defaultOpts)
vim.keymap.set("i", "kj", "<Esc>", defaultOpts)

-- save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", defaultOpts)

-- save file without auto-formatting
vim.keymap.set("n", "<leader>sn", "<cmd>noautocmd w <CR>", defaultOpts)

-- delete single character without copying into register
vim.keymap.set("n", "x", '"_x', defaultOpts)

-- Vertical scroll and center
vim.keymap.set("n", "<C-d>", "<C-d>zz", defaultOpts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", defaultOpts)

-- Find and center
vim.keymap.set("n", "n", "nzzzv", mergeOpts(defaultOpts, { desc = "Find and center" }))
vim.keymap.set("n", "N", "Nzzzv", mergeOpts(defaultOpts, { desc = "Find and center" }))

-- Resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", mergeOpts(defaultOpts, { desc = "Resize Up" }))
vim.keymap.set("n", "<Down>", ":resize +2<CR>", mergeOpts(defaultOpts, { desc = "Resize Down" }))
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", mergeOpts(defaultOpts, { desc = "Resize Left" }))
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", mergeOpts(defaultOpts, { desc = "Resize Right" }))

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", mergeOpts(defaultOpts, { desc = "Next Buffer" }))
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", mergeOpts(defaultOpts, { desc = "Previous Buffer" }))
vim.keymap.set("n", "<leader>x", ":bdelete!<CR>", mergeOpts(defaultOpts, { desc = "Close Buffer" }))
vim.keymap.set("n", "<leader>b", "<cmd> enew <CR>", mergeOpts(defaultOpts, { desc = "New Buffer" }))

-- Window management
vim.keymap.set("n", "<leader>Sv", "<C-w>v", mergeOpts(defaultOpts, { desc = "[S]plit [V]ertical" }))
vim.keymap.set("n", "<leader>Sh", "<C-w>s", mergeOpts(defaultOpts, { desc = "[S]plit [H]orizontal" }))
vim.keymap.set("n", "<leader>Sj", "<C-w>=", mergeOpts(defaultOpts, { desc = "[S]plit [E]qualize Sizes" }))
vim.keymap.set("n", "<leader>Sx", ":close<CR>", mergeOpts(defaultOpts, { desc = "[S]plit Close [x]" }))

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", defaultOpts)
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", defaultOpts)
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", defaultOpts)
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", defaultOpts)

-- Tabs
vim.keymap.set("n", "<leader>To", ":tabnew<CR>", mergeOpts(defaultOpts, { desc = "[T]ab [O]pen" }))
vim.keymap.set("n", "<leader>Tx", ":tabclose<CR>", mergeOpts(defaultOpts, { desc = "[T]ab Close [X]" }))
vim.keymap.set("n", "<leader>Tn", ":tabn<CR>", mergeOpts(defaultOpts, { desc = "[T]ab [N]ext" }))
vim.keymap.set("n", "<leader>Tp", ":tabp<CR>", mergeOpts(defaultOpts, { desc = "[T]ab [P]revious" }))

-- Toggle line wrapping
vim.keymap.set("n", "<leader>lw", "<cmd>set wrap!<CR>", mergeOpts(defaultOpts, { desc = "Toggle [L]ine [W]rapping" }))

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", defaultOpts)
vim.keymap.set("v", ">", ">gv", defaultOpts)

-- Keep last yanked when pasting
vim.keymap.set("v", "p", '"_dP', defaultOpts)

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
