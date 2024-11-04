local vim = vim

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") then
	vim.cmd("syntax reset")
end

vim.g.colors_name = "solarized_dark"
vim.o.background = "dark" -- Set background to dark

-- Define Solarized color palette
local colors = {
	bg = "#002b36", -- base03
	fg = "#839496", -- base0
	blue = "#268bd2", -- blue
	cyan = "#2aa198", -- cyan
	green = "#859900", -- green
	magenta = "#d33682", -- magenta
	orange = "#cb4b16", -- orange
	red = "#dc322f", -- red
	yellow = "#b58900", -- yellow
}

-- Apply highlights with Solarized colors
vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
vim.api.nvim_set_hl(0, "Comment", { fg = "#586e75", italic = true }) -- base1
vim.api.nvim_set_hl(0, "Keyword", { fg = colors.green, bold = false })
vim.api.nvim_set_hl(0, "Type", { fg = colors.yellow, bold = true })
vim.api.nvim_set_hl(0, "String", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Number", { fg = colors.cyan })
vim.api.nvim_set_hl(0, "Operator", { fg = colors.fg })
vim.api.nvim_set_hl(0, "Statement", { fg = colors.magenta, bold = true })
vim.api.nvim_set_hl(0, "Identifier", { fg = colors.blue })
vim.api.nvim_set_hl(0, "Constant", { fg = colors.green })
vim.api.nvim_set_hl(0, "PreProc", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Special", { fg = colors.magenta })
vim.api.nvim_set_hl(0, "Delimiter", { fg = "#93a1a1" }) -- base2
vim.api.nvim_set_hl(0, "Function", { fg = colors.blue, bold = true })
vim.api.nvim_set_hl(0, "Error", { fg = "#dc322f", bg = colors.bg, bold = true }) -- red
vim.api.nvim_set_hl(0, "Todo", { fg = "#FFFFFF", bg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "Title", { fg = colors.red, bold = true })
vim.api.nvim_set_hl(0, "MatchParen", { fg = "#FFFFFF", bg = colors.red })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#657b83" }) -- base1
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#073642" }) -- base02 for line highlight
vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#073642" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#073642" }) -- base02 for visual mode
vim.api.nvim_set_hl(0, "Search", { fg = "#000000", bg = "#b58900" }) -- yellow for search highlight
vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.fg, bg = "#073642" }) -- base02 for active status line
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.fg, bg = colors.bg }) -- base03 for inactive windows
