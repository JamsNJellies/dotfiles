" Vimrc
set nocompatible              
filetype off   

if empty(glob("~/.config/nvim/bundle/Vundle.vim"))
  silent! execute '!git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim'
  autocmd VimEnter * silent! PluginInstall
endif

" Plugin Manager - Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()

Plugin 'w0rp/ale'
Plugin 'mhinz/vim-startify'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'raimondi/delimitmate'
Plugin 'JamsNJellies/jellystatus'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'Shougo/deoplete-clangx'

call vundle#end()            
filetype plugin indent on    

" Theme
syntax on
set background=dark
colorscheme pablo
highlight EndOfBuffer ctermfg=black
set noruler

" Deoplete Stuff
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


" filetype stuff
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css  setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4

" Mappings

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

noremap C-n :NERDTreeToggle
nnoremap ; :

