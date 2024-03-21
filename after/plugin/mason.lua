require("mason").setup()
require("mason-lspconfig").setup()
require("lsp-format").setup()
local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("mason-lspconfig").setup_handlers {
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup { on_attach = require("lsp-format").on_attach, capabilities = capabilities }
	end,
}
