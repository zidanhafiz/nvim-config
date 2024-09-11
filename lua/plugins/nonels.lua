return {
	{
		"MunifTanjim/prettier.nvim",
	},
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.goimports_reviser,
					null_ls.builtins.formatting.golines,
					null_ls.builtins.formatting.gofumpt,
					null_ls.builtins.code_actions.gomodifytags,
				},
			})
			vim.keymap.set("n", "<C-f>", vim.lsp.buf.format, {})
		end,
	},
}
