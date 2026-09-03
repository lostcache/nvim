-- Load core config
require("options")
require("keymaps")
require("autocmds")
require("formatter")

-- Install + load plugins (native vim.pack, all config in lua/plugins/)
require("plugins")

require("plugins.aether")

-- Statusline: consistent bar background, only mode text color changes
-- local function set_mode_hl()
-- 	local bg = vim.api.nvim_get_hl(0, { name = "StatusLine" }).bg
-- 	local mode_colors = {
-- 		Normal = "#ffc466",
-- 		Insert = "#73c936",
-- 		Visual = "#96a6c8",
-- 		Replace = "#f43841",
-- 		Command = "#ffdd33",
-- 		Other = "#95a99f",
-- 	}
-- 	for mode, fg in pairs(mode_colors) do
-- 		vim.api.nvim_set_hl(0, "MiniStatuslineMode" .. mode, { fg = fg, bg = bg })
-- 	end
-- end
-- set_mode_hl()
-- vim.api.nvim_create_autocmd("ColorScheme", { callback = set_mode_hl })
