-- Format on save via conform.nvim. Conform applies minimal diffs instead of
-- replacing the whole buffer, so diagnostic extmarks (and folds/cursor) survive.
require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		cpp = { "clang-format" },
		go = { "gofmt" },
		lua = { "stylua" },
		markdown = { "prettier" },
		python = { "black" },
		rust = { "rustfmt" },
		tex = { "tex-fmt" },
		latex = { "tex-fmt" },
		zig = { "zigfmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "never",
	},
	notify_no_formatters = false,
})
