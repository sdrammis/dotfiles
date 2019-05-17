call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'reedes/vim-pencil'
Plug 'leafgarland/typescript-vim'
Plug 'w0rp/ale'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'gabrielelana/vim-markdown'
Plug '~/.fzf'
Plug 'raimondi/delimitmate'
Plug 'lervag/vimtex'

Plug 'ayu-theme/ayu-vim'


call plug#end()

filetype plugin on

set expandtab

syntax enable 
let ayucolor="light"  
colorscheme ayu 

set laststatus=2 " always show status bar

set tabstop=2
set shiftwidth=2
set expandtab

nnoremap <SPACE> <Nop>
let mapleader=" "

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.ts PrettierAsync
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'


map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif
