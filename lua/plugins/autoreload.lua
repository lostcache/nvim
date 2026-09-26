-- autoreload.nvim: handles files changed on disk while the buffer has
-- unsaved edits, which hotreload.nvim deliberately skips. Shows a prompt
-- to diff / reload / keep instead of silently ignoring the change.
require("autoreload").setup({
	conflict = {
		strategy = "prompt",
		actions = { "diff", "reload", "keep" },
		default = "keep",
	},
	timer = {
		enabled = true,
		interval_ms = 1000,
	},
	notify = {
		on_reload = false,
	},
})
