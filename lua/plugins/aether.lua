-- Aether colorscheme themed from the current Omarchy theme's colors.toml,
-- the same palette the terminals and Vim render with. Aether hot-reloads
-- the omarchy-generated neovim.lua on theme changes, so this only handles
-- startup.

local theme_colors_path = vim.fn.expand("~/.local/state/omarchy/current/theme/colors.toml")

local palette = {}
if vim.fn.filereadable(theme_colors_path) == 1 then
	for line in io.lines(theme_colors_path) do
		local key, value = line:match("^%s*([%w_]+)%s*=%s*\"#(%x%x%x%x%x%x)\"")
		if key and value then
			palette[key] = "#" .. value
		end
	end
end

local colors = {
	bg = palette.background,
	dark_bg = palette.dark_background,
	darker_bg = palette.darker_background,
	lighter_bg = palette.lighter_background,

	fg = palette.foreground,
	dark_fg = palette.dark_foreground,
	light_fg = palette.light_foreground,
	bright_fg = palette.bright_foreground,
	muted = palette.muted,

	red = palette.red,
	yellow = palette.yellow,
	orange = palette.orange,
	green = palette.green,
	cyan = palette.cyan,
	blue = palette.blue,
	magenta = palette.magenta,
	brown = palette.brown,

	bright_red = palette.bright_red,
	bright_yellow = palette.bright_yellow,
	bright_green = palette.bright_green,
	bright_cyan = palette.bright_cyan,
	bright_blue = palette.bright_blue,
	bright_magenta = palette.bright_magenta,

	accent = palette.accent,
	cursor = palette.bright_foreground,
	foreground = palette.foreground,
	background = palette.background,
	selection = palette.selection,
	selection_foreground = palette.foreground,
	selection_background = palette.selection,
}

require("aether").setup({
	colors = colors,
})
vim.cmd.colorscheme("aether")