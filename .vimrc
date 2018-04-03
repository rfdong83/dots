set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'easymotion/vim-easymotion'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'flazz/vim-colorschemes'

call vundle#end()
filetype plugin indent on

" set leader key
let mapleader = "\<Space>"

" key bindings
nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :e

nnoremap <Leader><Up> <C-W>+

" remove trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
  endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" status line
set laststatus=2

" tab configs
set expandtab
set softtabstop=2
set shiftwidth=2
set autoindent

" line / column numbers
set number
set ruler
set cursorline

" no wrapping
set tw=0

" syntax highlighting
syntax enable
colorscheme lucid
set term=screen-256color

" airline setup
let g:airline_theme = 'zenburn'

" easymotion setup
let g:Easymotion_smartcase = 1
map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map ? <Plug>(easymotion-sn)
omap ? <Plug>(easymotion-tn)

" java settings
autocmd FileType java setlocal shiftwidth=4 softtabstop=4 expandtab

" python settings
autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

