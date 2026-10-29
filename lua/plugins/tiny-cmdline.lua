-- Floating cmdline near the top center. This only repositions Neovim's native
-- ui2 cmdline window, so it adds no message/cmdline rendering overhead.
require("tiny-cmdline").setup({
	position = {
		x = "50%",
		y = "20%",
	},
})
