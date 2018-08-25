" James's vimrc

set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off   " required

if empty(glob("~/.vim/bundle/Vundle.vim"))
  silent! execute '!git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim'
  autocmd VimEnter * silent! PluginInstall
endif

" Plugin Manager - Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'junegunn/fzf'
Plugin 'wimstefan/vim-artesanal'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'reedes/vim-colors-pencil'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'raimondi/delimitmate'
Plugin 'fatih/vim-go'


call vundle#end()            
filetype plugin indent on    

" Theme
syntax on
set cursorline
colorscheme solarized
set background=dark
let g:airline_theme='solarized'

" filetype stuff
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css  setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Mappings
nnoremap ; :

set number
