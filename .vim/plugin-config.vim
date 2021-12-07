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
let g:kite_supported_languages = ['python', 'javascript']
let g:kite_tab_complete=1

" vim fugitive
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" COC
let g:coc_global_extensions = [
      \ 'coc-tsserver'
      \ ]

autocmd FileType scss setl iskeyword+=@-@

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

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


