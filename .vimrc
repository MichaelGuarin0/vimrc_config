set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
filetype plugin indent on
"set line numbers
set nu
set smartindent
"syntastic automatically load errors into the location list
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
"airline always displayed
set laststatus=2
"jedi-vim settings:w
"YouCompleteMe settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_python_binary_path = '/usr/bin/python3'
"set color scheme
colorscheme elflord
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Syntastic'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi'
Plugin 'davidhalter/jedi-vim'

" All of your Plugins must be added before the following line
set runtimepath^=~/.vim/bundle/ctrlp.vim
"autocmd vimenter * NERDTree
set ttimeoutlen=50
"airline settings
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#hunks#enabled=1
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" List of commands that I'm trying to remember
" :vs <filename> horizontal split
" :sp <filename> vertical split
