set nocompatible
set incsearch smartcase ignorecase
set hlsearch
set ruler
syntax on

se listchars=tab:.\ ,trail:.
se list
se tabstop=4 shiftwidth=4 backspace=2
se  autoindent cindent ruler wrap
set viminfo='20,<1000,s1000
set showcmd

set undofile
set undodir=~/.vim/undodir

"needed appearantly
filetype off


"for opening a file where left off
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
"snippets

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'beloglazov/vim-online-thesaurus'
"Plugin 'garbas/vim-snipmate'
"  Plugin 'MarcWeber/vim-addon-mw-utils'
"  Plugin 'tomtom/tlib_vim'


let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" let Vundle manage Vundle, required

Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

"Plugin 'nathanaelkane/vim-indent-guides'

"Plugin 'tomasr/molokai'
"let g:molokai_original = 1
"Plugin 'altercation/vim-colors-solarized'
"

Plugin 'LaTeX-Box-Team/LaTeX-Box'
"set background=dark
"colorscheme solarized
"Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required

let g:ycm_filetype_blacklist ={ 'matlab' : 1, 'latex' :1 , 'tex' :1 }
filetype plugin indent on
syntax enable
"filetype plugin indent on    " required
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
