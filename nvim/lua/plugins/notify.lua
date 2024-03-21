return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		require("notify").setup({
			background_colour = "#000000",
			render = "default",
			stages = "fade",
		})
		vim.cmd([[
      highlight NotifyERRORBorder guifg=#ed8796
      highlight NotifyERRORIcon guifg=#ed8796
      highlight NotifyERRORTitle  guifg=#ed8796
      highlight NotifyINFOBorder guifg=#8aadf4
      highlight NotifyINFOIcon guifg=#8aadf4
      highlight NotifyINFOTitle guifg=#8aadf4
      highlight NotifyWARNBorder guifg=#f5a97f
      highlight NotifyWARNIcon guifg=#f5a97f
      highlight NotifyWARNTitle guifg=#f5a97f
    ]])
	end,
}
