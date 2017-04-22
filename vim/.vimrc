" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'https://github.com/Quramy/tsuquyomi'
" Maybe just use :b <tab> instead Plugin 'jlanzarotta/bufexplorer'

call vundle#end()
filetype plugin indent on

" Leader key
let mapleader=","

" Make jj switch to normal mode 
inoremap jj <Esc>

" Rebind arrow keys
noremap j <left>
noremap k <down>
noremap l <up>
noremap ; <right>
noremap h ;

nnoremap <C-tab> :bnext

" NERDTree toggle
nnoremap <C-e> :NERDTree<CR>

" Make CtrlP work with ctrl-p
nnoremap <C-p> :CtrlP<CR>
" Make CtrlP use .gitignore file
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Built-in file explorer settings
let g:netrw_winsize = 25
let g:netrw_banner = 0
let g:netrw_liststyle = 3

" TypeScript (tsuquyomi) settings
" set <F12>=<C-v><F12>
noremap <F12> :TsuquyomiDefinition<CR>
autocmd FileType typescript nmap <buffer> <leader>t : <C-u>echo tsuquyomi#hint()<CR>

set relativenumber
syntax enable

" Tab settings
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

