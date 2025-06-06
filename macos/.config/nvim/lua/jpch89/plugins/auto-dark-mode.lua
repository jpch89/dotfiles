return {
	"f-person/auto-dark-mode.nvim",
	opts = {
		set_dark_mode = function()
			vim.api.nvim_set_option_value("background", "dark", {})
			vim.cmd("colorscheme onedark_vivid")
		end,
		set_light_mode = function()
			vim.api.nvim_set_option_value("background", "light", {})
			vim.cmd("colorscheme onelight")
		end,
		-- 10s to update
		update_interval = 10000,
		fallback = "dark",
	},
}
