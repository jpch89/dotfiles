return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	opts = {
		focus = true,
	},
	cmd = "Trouble",
	keys = {
		{ "<leader>hw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
		{
			"<leader>hf",
			"<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
			desc = "Open trouble file diagnostics",
		},
		{ "<leader>hq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
		{ "<leader>hl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
		{ "<leader>ht", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
	},
}
