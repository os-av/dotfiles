local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'pyright',
	'clangd',
	'rust_analyzer',
})

lsp.set_preferences({
	sign_icons = { }
})

lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = true,
})
