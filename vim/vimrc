set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required.
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end
" Plugin on GitHub repo
Plugin 'rafi/awesome-vim-colorschemes' " Color schemes, obviously
Plugin 'scrooloose/nerdtree' " A file explorer plugin
Plugin 'majutsushi/tagbar' " Shows general overview information on clases,
                           " function definitions, and more within a file
Plugin 'OmniSharp/omnisharp-vim' " .Net and C# support
Plugin 'w0rp/ale' " A .Net and C# 'as-you-type' linter to be used with
                  " OmniSharp

" All of your Plugins must be added before the following line
call vundle#end()            " required
"
"  Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable              " Allow automatic syntax processing.
filetype plugin indent on  " Enables file type detection and indentation for specific filetypes.
set tags=./.tags;/         " Enable ctags.  Searches for ./.tags in every directory up to / until it finds it.

" Enable 256 color support.
set t_Co=256

colorscheme apprentice     " For some reason I don't understand, set to this colorscheme first.
                           " Some of the others won't disply right otherwise.
" Sets the colorscheme.
colorscheme OceanicNext    " Gray background, with red, yellow, and blue accents.
colorscheme alduin         " Rustic, yellow/brown theme with a light brown background.

" Set whitepsace at the ends of lines to be highlighted.
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile * match BadWhitespace /\s\+$/

" Change the NERDTree colors
highlight Directory guifg=#FF0000 ctermfg=red

set encoding=utf-8

set number         " Turn on line numbers
set mouse=i        " Enable mouse input as insert mode.
set wildmenu       " Enable a graphical tab complete menu.
set statusline+=%f " Enable a status line which shows the relative path at the bottom of the window.
set laststatus=2   " Makes the status line visible at all times.
set showmatch      " Show matching parenthesis/brace-esque characters

set shiftwidth=4   " number of columns when autoindent
set tabstop=4      " Set the tab length to be equal to 4 spaces.
set expandtab  	   " Makes the tab key produce spaces instead of a tab character.

set incsearch      " Enable searching as characters are entered.
set hlsearch       " Highlight matching searches.

" Turn off autoindent when typing/pasting
set pastetoggle=<F9>
set paste              " Disable autoindent when typing/pasting
set nopaste            " Enable autoindent when typing/pasting

set list
set listchars=tab:=>  " Enable seeing tabs characters. = is shown at the start, and > eeverywhere else.

let mapleader = ","                       " Remap the leader key to be ','
noremap <leader><space> :nohlsearch<CR>   " Gets rid of any highlighting after pressing <leader key><space>
noremap <leader>q <esc>:q<CR>             " Quits the program after hitting <leader key>
inoremap <leader>q <esc>:q<CR>            " Quits the program after hitting <leader key>q
vnoremap <leader>q <esc>:q<CR>            " Quits the program after hitting <leader key>q
inoremap jk <esc>
nmap <leader>] :bnext<CR>
nmap <leader>[ :bprevious<CR>
inoremap <leader>[ :bnext<CR>
inoremap <leader>] :bprevious<CR>
noremap <home> :NERDTreeToggle<CR>
nmap <end> :TagbarToggle<CR>
