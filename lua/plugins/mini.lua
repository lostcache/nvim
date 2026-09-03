-- File explorer
require("mini.files").setup()

-- overrides "/" in mini-files buffer to use default "/" search.
-- this is needed as the default "/" is mapped to use telescope fuzzy search.
vim.api.nvim_create_autocmd("User", {
	pattern = "MiniFilesBufferCreate",
	callback = function(args)
		vim.keymap.set("n", "/", "/", { buffer = args.data.buf_id })
	end,
})

-- Auto pairs
require("mini.pairs").setup()

-- Git diff signs
require("mini.diff").setup({
	view = {
		style = "sign",
		signs = { add = "│", change = "│", delete = "│" },
	},
})

-- Highlight word under cursor
require("mini.cursorword").setup()

-- Highlight patterns (TODO, FIXME, etc)
local hipatterns = require("mini.hipatterns")
hipatterns.setup({
	highlighters = {
		fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
		hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
		todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
		note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
		hex_color = hipatterns.gen_highlighter.hex_color(),
	},
})

require("mini.comment").setup()
require("mini.fuzzy").setup()
require("mini.statusline").setup()
require("mini.tabline").setup()
require("mini.visits").setup()

require("bamboo").setup({
	style = "multiplex",
})
