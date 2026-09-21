-- Keep active and inactive windows visually identical: also clear the
-- background of non-current windows (NormalNC), not just Normal. Without
-- this, the current window goes transparent while inactive windows keep the
-- colorscheme background.
require("transparent").setup({
	extra_groups = { "NormalNC" },
})
