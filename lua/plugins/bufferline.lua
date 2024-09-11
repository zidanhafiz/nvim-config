return {
	{
		"akinsho/bufferline.nvim",
		event = "BufEnter",
		dependencies = {
			{ "nvim-tree/nvim-web-devicons" },
			{ "famiu/bufdelete.nvim" },
		},
		keys = {
			{ "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev Buffer" },
			{ "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next Buffer" },
			{ "[b", "<cmd>BufferLineMovePrev<cr>", desc = "Move buffer prev" },
			{ "]b", "<cmd>BufferLineMoveNext<cr>", desc = "Move buffer next" },
			{ "<leader>x", "<cmd>Bdelete<cr>", desc = "Close buffer" },
		},
		opts = {
			options = {
				tab_size = 22,
				diagnostics = "nvim_lsp",
				always_show_bufferline = true,
				offsets = {
					{
						filetype = "neo-tree",
					},
				},
			},
		},
	},
}
