local colorscheme = 'jellybeans'
vim.o.background = 'dark'

local ok, _ = pcall(vim.cmd, 'colorscheme ' .. colorscheme)

if not ok then
	vim.notify('Colorscheme ' .. colorscheme .. ' not found')
	return
end

vim.api.nvim_set_hl(0, "TabLine", { bg = "#30302c", fg = "#808070"})
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#30302c" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#30302c", fg = "#a1b56c"})

vim.cmd[[
    hi Pmenu guibg=#222222 guifg=#ffffff
]]
vim.cmd[[
    hi PmenuSel guibg=#444444 guifg=#ffffff
]]

vim.cmd[[
    hi CursorLine guibg=#252525
]]

vim.cmd[[
    hi ColorColumn guibg=#252525
]]
