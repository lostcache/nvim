-- Hop: EasyMotion-style jump targets with hint labels.
-- :HopWord hints every word in the current buffer's visible window.
require("hop").setup()

local map = vim.keymap.set

map("n", "<leader>w", "<cmd>HopWord<cr>", { desc = "Hop word" })
