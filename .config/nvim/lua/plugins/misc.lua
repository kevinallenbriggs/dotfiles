-- Standalone plugins with less than 10 lines of config go here
return {
	{
		-- Tmux & split window navigation
		"christoomey/vim-tmux-navigator",
	},
	{
		-- Detect tabstop and shiftwidth automatically
		"tpope/vim-sleuth",
	},
	{
		-- Powerful Git integration for Vim
		"tpope/vim-fugitive",
	},
	{
		-- Autoclose parentheses, brackets, quotes, etc.
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		-- Easily comment/uncomment
		"numToStr/Comment.nvim",
		opts = {
			-- add any options here
		},
	},
	{
		-- Highlight todo, notes, etc in comments
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
	{
		-- High-performance color highlighter
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
	{
		-- Easily open a terminal inside nvim
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {},
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<leader>tt]],
				direction = "float",
			})
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
	},
	{
		"jmbuhr/otter.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		opts = {},
	},
	{
		"whatyouhide/vim-lengthmatters",
		event = "VeryLazy",
		keys = {
			{ "<leader>to", ":LengthmattersToggle<CR>", "[t]oggle [o]ver lengthmatters markers" },
		},
		init = function()
			vim.g.lengthmatters_on_by_default = 0
		end,
	},
}
