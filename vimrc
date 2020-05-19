set nocompatible

set rtp+=~/.vim/bundle/Vundle.vim
" vim-plug
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-commentary'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'sheerun/vim-polyglot'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'tpope/vim-fugitive'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'leafgarland/typescript-vim'
Plugin 'valloric/youcompleteme'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ryanoasis/vim-devicons'
call vundle#end()

syntax on

syntax enable
set t_Co=256
color dracula
let g:airline_theme='murmur' " vim-airline theme

" Fonts 
set encoding=utf8
set guifont=Droid\ Sans\ Mono\ Nerd\ Font\ Complete:h14

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" YouCompleteMe
let g:ycm_auto_trigger = 1
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 3

set laststatus=2
set tabstop=2
set shiftwidth=2
set encoding=utf-8
set smarttab
set number
set expandtab
set incsearch
set hlsearch
set history=1000
set nobackup
set noswapfile
set autoindent

" make backspace behave in a sane manner
set backspace=indent,eol,start
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

let g:airline_powerline_fonts = 1
" Keybinds
let mapleader=" "
let g:NumberToggleTrigger="<C-n>"
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
