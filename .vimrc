" Configuration file VIM
"
" Links to configuration files 
so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim
so ~/.vim/maps.vim

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set shiftwidth=4
set relativenumber
set laststatus=2
set bg=dark
set tabstop=4
set expandtab
set autoindent
set noshowmode
set scrolloff=5
set sidescrolloff=5

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

highlight Normal ctermbg=NONE
syntax enable

colorscheme gruvbox
