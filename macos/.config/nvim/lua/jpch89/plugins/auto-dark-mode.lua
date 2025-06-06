return {
	"f-person/auto-dark-mode.nvim",
	opts = {
		set_dark_mode = function()
			vim.opt.background = "dark"
			vim.cmd("colorscheme onedark_vivid")

			-- to configure lazy pending updates count
			local lualine = require("lualine")
			local lazy_status = require("lazy.status")
			local onedark_vivid = require("lualine.themes.onedark_vivid")
			lualine.setup(
				-- configure lualine with modified theme
				{
					options = {
						theme = onedark_vivid,
					},
					sections = {
						lualine_x = {
							{
								lazy_status.updates,
								cond = lazy_status.has_updates,
								color = { fg = "#ff9e64" },
							},
							{ "encoding" },
							{ "fileformat" },
							{ "filetype" },
						},
					},
				}
			)
		end,
		set_light_mode = function()
			vim.opt.background = "light"
			vim.cmd("colorscheme onelight")

			-- to configure lazy pending updates count
			local lualine = require("lualine")
			local lazy_status = require("lazy.status")
			local onelight = require("lualine.themes.onelight")
			lualine.setup(
				-- configure lualine with modified theme
				{
					options = {
						theme = onelight,
					},
					sections = {
						lualine_x = {
							{
								lazy_status.updates,
								cond = lazy_status.has_updates,
								color = { fg = "#ff9e64" },
							},
							{ "encoding" },
							{ "fileformat" },
							{ "filetype" },
						},
					},
				}
			)
		end,
		-- 10s to update
		update_interval = 3000,
		fallback = "dark",
	},
}
