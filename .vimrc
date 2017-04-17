" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Plugins here
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
" Maybe just use :b <tab> instead Plugin 'jlanzarotta/bufexplorer'

call vundle#end()
filetype plugin indent on

" Make jj switch to normal mode 
inoremap jj <Esc>

" Rebind arrow keys
noremap j <left>
noremap k <down>
noremap l <up>
noremap ; <right>
noremap h ;

" NERDTree toggle
nnoremap <C-e> :NERDTreeToggle<CR>

" Make CtrlP work with ctrl-p
nnoremap <C-p> :CtrlP<CR>
" Make CtrlP use .gitignore file
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set relativenumber
syntax enable
