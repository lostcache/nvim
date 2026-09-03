local ts = require("nvim-treesitter")

-- Install parsers
ts.install({
	"go",
	"cpp",
	"c",
	"python",
	"rust",
	"zig",
	"ocaml",
	"lua",
	"markdown",
	"markdown_inline",
})
