return {
	{
		"williamboman/mason.nvim",
		opts = {},
	},
	{
		"github/copilot.vim",
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"cssls",
				"html",
				"emmet_ls",
				"ts_ls",
				"tailwindcss",
				"pyright",
				"bashls",
				"jsonls",
				"yamlls",
				"gopls",
			},
			automatic_installation = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			local servers = {
				"lua_ls",
				"ts_ls",
				"emmet_ls",
				"pyright",
				"html",
				"cssls",
				"tailwindcss",
				"bashls",
				"jsonls",
				"yamlls",
				"gopls",
			}

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					capabilities = capabilities,
				})
			end

			vim.diagnostic.config({
				signs = {
					text = {
						[vim.diagnostic.severity.ERROR] = " ",
						[vim.diagnostic.severity.WARN] = " ",
						[vim.diagnostic.severity.INFO] = " ",
						[vim.diagnostic.severity.HINT] = "󰌵 ",
					},
				},
			})

			local diagnostic_config = {
				virtual_text = true,
				update_in_insert = true,
				underline = true,
				severity_sort = true,
				float = {
					focusable = false,
					style = "minimal",
					border = "rounded",
					source = "always",
					header = "",
					prefix = "",
					suffix = "",
				},
			}

			vim.diagnostic.config(diagnostic_config)

			vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
				border = "rounded",
			})

			vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
				border = "rounded",
			})

			-- Keymaps --
			local keymap_opts = { noremap = true, silent = true }
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, keymap_opts)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts)
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, keymap_opts)
			vim.keymap.set("n", "gI", vim.lsp.buf.implementation, keymap_opts)
			vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts)
		end,
	},
}
