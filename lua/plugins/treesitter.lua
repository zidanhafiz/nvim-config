return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		{
			"JoosepAlviste/nvim-ts-context-commentstring",
			event = "VeryLazy",
		},
		{
			"nvim-tree/nvim-web-devicons",
			event = "VeryLazy",
		},
		{
			"windwp/nvim-ts-autotag",
			event = "VeryLazy",
		},
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-ts-autotag").setup({})
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"javascript",
				"html",
				"css",
				"typescript",
				"python",
				"java",
				"go",
        "gomod",
        "gowork",
        "gosum",
				"tsx",
				"markdown",
				"markdown_inline",
				"prisma",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
