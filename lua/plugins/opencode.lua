-- opencode.nvim: bridge to a running opencode server (starts one if needed).
-- Zed-like inline agent edit: select text (or rest on a line) and press
-- <C-CR> to prompt opencode with the selection injected as @this context.
-- Proposed edits open in a side-by-side diff: da accepts, dr rejects,
-- dp/do apply only the hunk under the cursor, q closes.
vim.g.opencode_opts = {}

local map = vim.keymap.set

map({ "n", "x" }, "<C-CR>", function()
	require("opencode").ask("@this: ")
end, { desc = "Ask OpenCode about selection" })

map({ "n", "x" }, "<leader>oc", function()
	require("opencode").select()
end, { desc = "OpenCode prompts & commands" })
