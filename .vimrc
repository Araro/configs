set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set bg=dark
set tabstop=4 
set autoindent
set noshowmode
set scrolloff=5
set sidescrolloff=5


call plug#begin('~/.vim/plugged')

" Themes 
Plug 'morhetz/gruvbox'

" IDE
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/vim-gitbranch'
Plug 'yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'junegunn/fzf' 
Plug 'junegunn/fzf.vim'
Plug 'benmills/vimux'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-repeat'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let NERDTreeQuitOnOpen=1
" let g:deoplete#enable_at_startup = 1


" let g:jsx_ext_requiered = 0
let mapleader=' '

"SHORTCUTS
" To open Plugins
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>p :Files<CR>
nmap <Leader>ag :Ag<CR>
" To save and quit file
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>x :x<CR>

map <Leader>ob :Buffers<CR>
" To execute python file in cmd window
nmap <Leader>ep :! clear; python3 %<CR>

" Split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Faster scrolling
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" tmux navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <Leader><C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <Leader><C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <Leader><C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <Leader><C-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <Leader><C-g> :TmuxNavigatePrevious<cr>

" CONFIGURATIONS

"Reference chart of values:
"		Ps = 0 -> blinking block.
"		Ps = 1 -> blinking block (deafault).
"		Ps = 2 -> steady block.
"		Ps = 3 -> blinking underline.
"		Ps = 4 -> steady underline.
"		Ps = 5 -> blinking bar (xterm).
"		Ps = 6 -> steady bar (xterm).
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" lightline
let  g:lightline = {
  		\ 'active': { 
		\	'left': [['mode', 'paste'], [], ['relativepath', 'modified']],
		\	'right': [['kitestatus'], ['filetype', 'percent', 'lineinfo'], ['gitbranch']]
		\ },
		\ 'inactive': {
  		\ 	'left': [['inactive'], ['relativepath']],
		\ 	'right': [['bufnum']]
		\ },
		\ 'component': {
  		\ 	'bufnum': '%n',
		\ 	'inactive' : 'inactive'
		\ },
		\ 'component_function': {
  		\ 	'gitbranch': 'fugitive#head',
		\ 	'kitestatus': 'kite#statusline'
		\ },
		\ 'colorscheme': 'wombat',
		\ 'subseparator': {
  		\ 	'left': '',
		\ 	'right': ''
		\ }
		\}

" kite
let g:kite_supported_languages = ['*']
let g:kite_tab_complete=1

" COC
" autocmd FileType python let b:coc_suggest_disable = 1
" autocmd FileType javascript let b:coc_suggest_disable = 1
" autocmd FileType scss setl iskeyword++@-@

set splitright
function! OpenTerminal()
	" Move to right most buffer
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"
	execute "normal \<C-l>"

	let bufNum = bufnr("%")
	let bufType = getbufvar(bufNum, "&buftype", "not found")

	if bufType == "terminal"
		" Close existing terminal
		execute "q!"
	else
		" Open terminal
		execute "vert term"

		" Turn off numbers
		execute "set nonu"
		execute "set nornu"

		" Toggle insert on enter/exit
		silent au BufLeave <buffer> stopinsert!
		silent au BufWinEnter,WinEnter <buffer> startinsert!

		" Set maps inside terminal buffer
		execute "tnoremap <buffer> <C-h> <C-\\><C-n><C-w><C-h>"
		execute "tnoremap <buffer> <C-t> <C-\\><C-n>:q!<CR>"
		execute "tnoremap <buffer> <C-\\><C-\\> <C-\\><C-n>"

		startinsert!
	endif
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>
