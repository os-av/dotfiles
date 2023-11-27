vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

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

vim.api.nvim_set_keymap(
  'v', '<leader>y', '"+y',
  { noremap = true }
)

vim.api.nvim_set_keymap(
  'n', '<leader>yy', '"+yy',
  { noremap = true }
)
