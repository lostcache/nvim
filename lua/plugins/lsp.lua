-- Native LSP via vim.lsp.* (server configs provided by nvim-lspconfig)
local map = vim.keymap.set

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local opts = { buffer = bufnr, silent = true }

		map("n", "gd", vim.lsp.buf.definition, opts)
		map("n", "K", vim.lsp.buf.hover, opts)
		map("n", "<leader>rn", vim.lsp.buf.rename, opts)
		map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

		-- Vanilla LSP completion, manual only: <C-n> opens the popup,
		-- or navigates it when it's already open
		vim.lsp.completion.enable(true, args.data.client_id, bufnr)
		map("i", "<C-n>", function()
			if vim.fn.pumvisible() == 1 then
				return "<C-n>"
			end
			vim.lsp.completion.get()
		end, { buffer = bufnr, silent = true, expr = true })
	end,
})

local fn_complete = vim.fn.complete
vim.fn.complete = function(startcol, matches)
	if #matches == 1 then
		local completeopt = vim.o.completeopt
		vim.o.completeopt = "menu"
		local ok, err = pcall(fn_complete, startcol, matches)
		vim.o.completeopt = completeopt
		if not ok then
			error(err)
		end
	else
		fn_complete(startcol, matches)
	end
end

local servers = {
	clangd = {
		cmd = { "clangd", "--background-index" },
	},
	zls = {
		filetypes = { "zig", "zir", "zon" },
		root_markers = { "zls.json", "build.zig", ".git" },
	},
	lua_ls = {
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				diagnostics = { globals = { "vim" } },
				workspace = { library = vim.api.nvim_get_runtime_file("", true) },
				telemetry = { enable = false },
			},
		},
	},
	go = {
		cmd = { "gopls" },
		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
					shadow = true,
				},
				staticcheck = true,
			},
		},
	},
}

-- Servers enabled with defaults from lspconfig
local plain_servers = { "pyright", "rust_analyzer", "ocamllsp" }

-- Configure and enable servers (only if the server binary is installed)
-- The binary is resolved from the lspconfig-merged config, since it can
-- differ from the server name (e.g. rust_analyzer -> rust-analyzer).
local function enable_server(name, config)
	if config then
		vim.lsp.config(name, config)
	end
	local cfg = vim.lsp.config[name]
	local bin = cfg and cfg.cmd and cfg.cmd[1] or name
	if vim.fn.executable(bin) == 1 then
		vim.lsp.enable(name)
	end
end

for name, config in pairs(servers) do
	enable_server(name, config)
end

for _, name in ipairs(plain_servers) do
	enable_server(name)
end