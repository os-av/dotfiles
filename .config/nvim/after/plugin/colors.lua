local colorscheme = 'jellybeans'
vim.o.background = 'dark'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not ok then
	vim.notify('Colorscheme ' .. colorscheme .. ' not found')
	return
end

vim.api.nvim_set_hl(0, "TabLine", { bg = "#30302c", fg = "#808070" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#30302c" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#30302c", fg = "#a1b56c" })

vim.api.nvim_set_hl(0, "Pmenu", { bg = "#222222", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#444444", fg = "#ffffff" })

vim.api.nvim_set_hl(0, "Visual", { bg = "#151515" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#151515" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#151515" })
