-- Native plugin manager: vim.pack (Neovim 0.12+)
-- Installs plugins into ~/.local/share/nvim/site/pack/core/opt via git and
-- :packadd's them. Versions are pinned to the commits from the original
-- lazy-lock.json. Update with `:lua vim.pack.update()`.

local gh = function(repo)
	return "https://github.com/" .. repo
end

vim.pack.add({
	-- Colorschemes
	{ src = gh("craftzdog/solarized-osaka.nvim"), version = "f0c2f0ba0bd56108d53c9bfae4bb28ff6c67bbdb" },
	{ src = gh("blazkowolf/gruber-darker.nvim"), version = "aba065c3a79b58cc3863d5c9db319255abd1258a" },
	{ src = gh("ribru17/bamboo.nvim"), version = "1309bc88bffcf1bedc3e84e7fa9004de93da774a" },
	{ src = gh("omacom-io/aether.nvim"), version = "567efb778534e11ee1072d4fe27178f705a27d8a" },

	-- LSP
	{ src = gh("neovim/nvim-lspconfig"), version = "d20d83b3f24f5884da73a9fc92fdc47e778b8d0d" },

	-- Treesitter
	{ src = gh("nvim-treesitter/nvim-treesitter"), version = "6e42d823ce0a5a76180c473c119c7677738a09d1" },

	-- Telescope
	{ src = gh("nvim-telescope/telescope.nvim"), version = "e709d31454ee6e6157f0537f861f797bd44c0bad" },
	{ src = gh("nvim-lua/plenary.nvim"), version = "b9fd5226c2f76c951fc8ed5923d85e4de065e509" },

	-- Trouble
	{ src = gh("folke/trouble.nvim"), version = "bd67efe408d4816e25e8491cc5ad4088e708a69a" },
	{ src = gh("nvim-tree/nvim-web-devicons"), version = "6788013bb9cb784e606ada44206b0e755e4323d7" },

	-- Mini modules
	{ src = gh("echasnovski/mini.files"), version = "22c64f010eef047ed270e29e7cc266cd4740787e" },
	{ src = gh("echasnovski/mini.pairs"), version = "d5a29b6254dad07757832db505ea5aeab9aad43a" },
	{ src = gh("echasnovski/mini.diff"), version = "fbb93ea1728e7c9d0944df8bd022a68402bd2e7e" },
	{ src = gh("echasnovski/mini.cursorword"), version = "dda0f57d55bb1fa19423b7201b2ba892c7d2bb3c" },
	{ src = gh("echasnovski/mini.hipatterns"), version = "add8d8abad602787377ec5d81f6b248605828e0f" },
	{ src = gh("echasnovski/mini.comment"), version = "a0c721115faff8d05505c0a12dab410084d9e536" },
	{ src = gh("echasnovski/mini.fuzzy"), version = "18e9cc3d7406f44a145d074ad18b10e472509a18" },
	{ src = gh("echasnovski/mini.statusline"), version = "3e96596ebe51b899874d8174409cdc4f3c749d9a" },
	{ src = gh("echasnovski/mini.base16"), version = "852a1ab7700dd5ca56ec94232ea7bc2d6158662a" },
	{ src = gh("echasnovski/mini.tabline"), version = "caf23615b9b99bacc79ecd60f61c4e6a8ec18c84" },
	{ src = gh("echasnovski/mini.visits"), version = "f6b86565acc690aa111627433906be3d38e2ba81" },

	-- Misc
	{ src = gh("rmagatti/auto-session"), version = "c93a9bfd8a5cbf931a6ead5c824998da874b9f79" },
	{ src = gh("lukas-reineke/indent-blankline.nvim"), version = "005b56001b2cb30bfa61b7986bc50657816ba4ba" },
	{ src = gh("akinsho/toggleterm.nvim"), version = "9a88eae817ef395952e08650b3283726786fb5fb" },
	{ src = gh("nvim-pack/nvim-spectre"), version = "72f56f7585903cd7bf92c665351aa585e150af0f" },
	{ src = gh("tribela/transparent.nvim"), version = "main" },
	{ src = gh("smoka7/hop.nvim"), version = vim.version.range("2") },

	-- git
	{ src = gh("neogitorg/neogit") },

	-- Themes
	{ src = gh("sainnhe/everforest") },
	{ src = gh("folke/tokyonight.nvim") },
}, { confirm = false })

-- Configure the loaded plugins
require("plugins.lsp")
require("plugins.mini")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
require("plugins.toggleterm")
require("plugins.auto-session")
require("plugins.indent-blankline")
require("plugins.neogit")
require("plugins.transparent")
require("plugins.hop")
