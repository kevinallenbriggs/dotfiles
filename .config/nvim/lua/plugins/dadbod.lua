return {
	-- https://www.youtube.com/watch?v=NhTPVXP8n7w
	-- https://github.com/kristijanhusak/vim-dadbod-ui
	-- https://github.com/tpope/vim-dadbod
	-- https://github.com/kristijanhusak/vim-dadbod-completion
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod",                     lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1
	end,
}
