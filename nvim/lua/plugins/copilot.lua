return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		branch = "canary",
		event = "VeryLazy",
		dependencies = {
			{ "zbirenbaum/copilot.lua" }, -- or github/copilot.vim
			{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
		},
		opts = {
			debug = true, -- Enable debugging
			-- window = {
			-- 	layout = "float",
			-- 	relative = "cursor",
			-- 	width = 1,
			-- 	height = 0.4,
			-- 	row = 1,
			-- },
		},
		keys = {
			{
				"<leader>cc",
				function()
					require("CopilotChat").toggle()
				end,
				desc = "Toggle Copilot Chat",
			},
		},
		config = {
			vim.keymap.set("n", "<leader>cq", ":CopilotChat ", {}),
			vim.keymap.set("v", "<leader>ce", ":CopilotChatExplain<cr>", { silent = true }),
			vim.keymap.set("v", "<leader>co", ":CopilotChatOptimize<cr>", { silent = true }),
		},
	},
	{
		"zbirenbaum/copilot.lua",
		enabled = true,
		event = { "BufEnter" },
		config = function()
			require("copilot").setup({
				suggestion = {
					enabled = false,
				},
				panel = { enabled = false },
			})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		enabled = true,
		event = { "BufEnter" },
		dependencies = { "zbirenbaum/copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
