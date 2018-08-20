" James's vimrc

set shell=/bin/bash

set nocompatible              " be iMproved, required
filetype off                  " required
" Plugin Manager - Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

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

call vundle#end()            
filetype plugin indent on    

" Theme
syntax on
set t_Co=256
set cursorline
colorscheme darkzen
let g:airline_theme='badcat'


" Mappings
nnoremap ; :

set number
