filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'Shougo/neocomplcache'
  Bundle 'Shougo/unite.vim'
  Bundle 'Shougo/vimshell.git'
  Bundle 'Shougo/vimproc.git'
" ColorSchema{{{{
" color schema 256
  Bundle 'desert256.vim'
  Bundle 'mrkn256.vim'
  Bundle 'tomasr/molokai'
  Bundle 'yuroyoro/yuroyoro256.vim'
" }}}

colorscheme yuroyoro256  
filetype plugin indent on

set t_Co=256
syntax on
hi Comment ctermfg=lightblue
"
inoremap <C-d> <ESC>xi

" 移動
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-n> <Down>
inoremap <C-p> <UP>
"
map <C-a> <Home>
map <C-e> <End>
map <C-b> <Left>
map <C-f> <Right>
map <C-n> <Down>
map <C-p> <UP>
