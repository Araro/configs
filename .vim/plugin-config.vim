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

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


" kite
" let g:kite_supported_languages = ['*']
" let g:kite_tab_complete=1


