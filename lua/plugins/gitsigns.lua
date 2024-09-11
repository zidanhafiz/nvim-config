return {
  {
    "tpope/vim-fugitive"
  },
	{
		"lewis6991/gitsigns.nvim",
		event = "BufEnter",
		opts = {},
		keys = {
			{ "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview hunk" },
			{ "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<cr>", desc = "Toggle current line blame" },
		},
	},
}
