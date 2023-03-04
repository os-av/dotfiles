local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})

vim.keymap.set('n', '<C-t>', " :NERDTreeTabsToggle<CR>")

vim.api.nvim_set_keymap(
    'n', '<S-d>', ':lua vim.diagnostic.open_float()<CR>',
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<S-n>', ':lua vim.diagnostic.goto_next()<CR>',
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    'n', '<S-b>', ':lua vim.diagnostic.goto_prev()<CR>',
    { noremap = true, silent = true }
)

