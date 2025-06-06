return {
  "szw/vim-maximizer",
  -- lazy load plugin when any of the following keymaps is executed
  keys = {
    { "<leader>wm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
