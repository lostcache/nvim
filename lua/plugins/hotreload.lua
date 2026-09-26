-- hotreload.nvim: reload buffers changed on disk (agents, formatters, git).
-- Uses OS file system events on the parent directory, so atomic saves
-- (write temp file + rename) are caught immediately. Unmodified buffers
-- are reloaded silently; buffers with unsaved changes are never clobbered.
require("hotreload").setup({
	silent = true,
})
