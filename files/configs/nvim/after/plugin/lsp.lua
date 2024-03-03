local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(client, bufnr)
	-- see :htlp lsp-zero keybindings
	lsp_zero.default_keymaps({buffer = bufnr})

	vim.keymap.set("n", "<leader>gd", function() vim.lsp.buf.definition() end, {buffer = bufnur})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	ensure_installed = {},
	handlers = {
		lsp_zero.default_setup,
	}
})

-- https://lsp-zero.netlify.app/v3.x/language-server-configuration.html
