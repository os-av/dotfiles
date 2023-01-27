let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ 'active': {
      \   'left':  [ [ 'paste' ],
      \              [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
	  \	  'right': [ [ 'lineinfo' ], ['percent'], ['filetype'] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
	  \   'cocstatus': 'coc#status',
	  \   'filename': 'LightlineFilename',
	  \   'percent': 'MyLightLinePercent',
	  \   'lineinfo': 'MyLightLineLineInfo',
      \ },
      \ }

function! LightlineFilename()
	let root = fnamemodify(get(b:, 'git_dir'), ':h')
	let path = expand('%:p')
	if path[:len(root)-1] ==# root
		return path[len(root)+1:]
	endif
	return expand('%')
endfunction

function! MyLightLinePercent()
	if &ft !=? 'nerdtree'
		return line('.') * 100 / line('$') . '%'
	else
		return ''
	endif
endfunction

function! MyLightLineLineInfo()
	if &ft !=? 'nerdtree'
		return line('.').':'. col('.')
	else
		return ''
	endif
endfunction

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set t_Co=256
set termguicolors
