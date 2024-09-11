return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		opts = {
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			default_component_configs = {
				diagnostics = {
					symbols = {
						hint = "󰌵 ",
						info = " ",
						warn = " ",
						error = " ",
					},
					highlights = {
						hint = "DiagnosticSignHint",
						info = "DiagnosticSignInfo",
						warn = "DiagnosticSignWarn",
						error = "DiagnosticSignError",
					},
				},
			},
		},
		keys = {
			{ "<leader>e", "<cmd>Neotree focus<cr>", desc = "Neotree focus" },
			{ "<leader>E", "<cmd>Neotree toggle<cr>", desc = "Open/ close neotree" },
		},
	},
}
