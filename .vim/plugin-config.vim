" CONFIGURATIONS

" gruvbox
let g:gruvbox_contrast_dark = "hard"

" Cursor
" Reference chart of values:
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

" tmux navigator
let g:tmux_navigator_no_mappings = 1

"  nerdtree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1
" let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeShowLineNumbers=1
let NERDTreeMapOpenInTab='\t'

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=[$HOME.'/configs/.vim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-_>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" kite
let g:kite_supported_languages = ['*']
let g:kite_tab_complete=1

let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]

" coc
autocmd FileType scss setl iskeyword+=@-@

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=1

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" fugitive always vertical diffing
set diffopt+=vertical

" Highlight symbol under cursor on CursorHold
let $FZF_DEFAULT_OPTS='--layout=reverse'
