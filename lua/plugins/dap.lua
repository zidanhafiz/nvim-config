return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{ "rcarriga/nvim-dap-ui" },
			{ "nvim-neotest/nvim-nio" },
			{ "mxsdev/nvim-dap-vscode-js" },
			{
				"microsoft/vscode-js-debug",
				opt = true,
			},
			{ "mortepau/codicons.nvim" },
		},
		config = function()
			local dap, dapui = require("dap"), require("dapui")

			require("dap-vscode-js").setup({
				-- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
				debugger_path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug", -- Path to vscode-js-debug installation.
				-- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
				adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" }, -- which adapters to register in nvim-dap
				-- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
				-- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
				-- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
			})

			for _, language in ipairs({ "typescript", "javascript" }) do
				dap.configurations[language] = {
					{
						type = "pwa-node",
						request = "launch",
						name = "Launch file",
						program = "${file}",
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-node",
						request = "attach",
						name = "Attach",
						processId = require("dap.utils").pick_process,
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-chrome",
						request = "launch",
						name = 'Start Chrome with "localhost"',
						url = "http://localhost:3000",
						webRoot = "${workspaceFolder}",
						userDataDir = "${workspaceFolder}/.vscode/vscode-chrome-debug-userdatadir",
					},
				}
			end

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open({})
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open({})
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close({})
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close({})
			end
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open({})
			end

			-- Keymaps --
			vim.keymap.set("n", "<leader>dt", dapui.toggle, {})
			vim.keymap.set("n", "<leader>dc", dap.continue, {})
			vim.keymap.set("n", "<leader>di", dap.step_over, {})
			vim.keymap.set("n", "<leader>do", dap.step_into, {})
			vim.keymap.set("n", "<leader>dp", dap.step_out, {})
			vim.keymap.set("n", "<Leader>db", dap.toggle_breakpoint, {})
			vim.keymap.set("n", "<Leader>dB", dap.set_breakpoint, {})
			vim.keymap.set("n", "<Leader>lp", function()
				require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
			end)
			vim.keymap.set("n", "<Leader>dr", dap.repl.open, {})
			vim.keymap.set("n", "<Leader>dl", dap.run_last, {})
		end,
	},
}
