set nocompatible

" vim-plug
call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'itchyny/lightline.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
call plug#end()

syntax on
"color dracula

let g:lightline = {
\  'colorscheme': 'Dracula',
\  'active': {
\    'left':[ [ 'mode', 'paste' ],
\             [ 'gitbranch', 'readonly', 'filename', 'modified' ]
\    ]
\  },
\   'component': {
\     'lineinfo': ' %3l:%-2v',
\   },
\  'component_function': {
\    'gitbranch': 'fugitive#head',
\  }
\}

let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}
let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }
set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

let g:lightline_powerline_fonts = 1
let g:lightline#extensions#tabline#enabled = 0

set guifont=Monaco\ 14
set laststatus=2
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set smarttab
set number
set expandtab
set incsearch
set hlsearch
set history=1000
set nobackup
set noswapfile
set noshowmode

" make backspace behave in a sane manner
set backspace=indent,eol,start
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

set guioptions-=m  "remove toolbar

" Standard JS
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }

" ctrl-s to save
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

" Keybinds
let mapleader=","
let g:NumberToggleTrigger="<C-n>"
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>t :CtrlP<CR>
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

set showtabline=1
