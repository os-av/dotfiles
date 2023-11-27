local lsp = require('lsp-zero').preset({})

lsp.set_preferences({
    sign_icons = { }
})
lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
    }
})

vim.diagnostic.config({
    virtual_text = false,
    virtual_lines = false,
    update_in_insert = false,
    signs = true,
    underline = true,
    severity_sort = false,
    float = true,
})
