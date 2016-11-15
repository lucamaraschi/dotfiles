set nocompatible

" vim-plug
call plug#begin()

Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'dracula/vim'
Plug 'tpope/vim-fugitive'
Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'epmatsw/ag.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'honza/vim-snippets'
Plug 'jayflo/vim-skip'
Plug 'junegunn/vim-peekaboo'
Plug 'mhinz/vim-startify'
Plug 'moll/vim-node'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'racer-rust/vim-racer'
Plug 'sheerun/vim-polyglot'
Plug 'sjl/gundo.vim'
Plug 'spwhitt/vim-nix'
Plug 'tmux-plugins/vim-tmux'
Plug 'ternjs/tern_for_vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tikhomirov/vim-glsl'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'vim-scripts/BufOnly.vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" Display settings
" ================

syntax on
syntax enable
color dracula


" Search Settings
" ===============
set incsearch        " Find the next match as we type the search
set hlsearch         " Hilight searches by default
set viminfo='100,f1  " Save up to 100 marks, enable capital marks


" Turn Off Swap Files
" ===================
set noswapfile
set nobackup
set nowritebackup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp


" Folds
" =====
set foldmethod=indent   " Fold based on indent
set foldnestmax=3       " Deepest fold is 3 levels
set nofoldenable        " Don't fold by default


" Completion
" ==========
set wildmode=longest,list,full
set wildmenu                    " Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~     " Stuff to ignore when tab completing
set wildignore+=*vim/backups*


" Syntastic
" =========
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


set guifont=Monaco\ 14
set laststatus=2
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set smarttab
set number
set expandtab
set history=1000
set autoread
set splitright
set splitbelow


" Disable Arrow Keys
" ==================
imap <down>  <nop>
imap <left>  <nop>
imap <right> <nop>
imap <up>    <nop>
map  <down>  <nop>
map  <left>  <nop>
map  <right> <nop>
map  <up>    <nop>

" Lightline
" =========



" Airline
" =======
" let g:airline_powerline_fonts = 0
" let g:airline_theme = 'base16_eighties'
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" let g:airline_section_b = ''
" let g:airline_section_z = airline#section#create(['%l:%c:%L'])
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline#extensions#hunks#enabled = 0
" let g:airline#extensions#hunks#enabled = 0


" Git Gutter
" ==========
let g:gitgutter_sign_column_always = 1
let g:gitgutter_eager = 0
highlight Comment cterm=italic


" YCM-UltiSnip-SuperTab:
" extracted from https://github.com/Valloric/YouCompleteMe/issues/36
" =====================
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" UltiSnip
" ========
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=['MyUltiSnips']
let g:UltiSnipsListSnippets="<c-l>"


" YCM
" ===
let g:ycm_complete_in_comments = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1


" Searching
" ==========
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor " Use ag over grep
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""' " Use ag in CtrlP
  let g:ctrlp_use_caching = 0 " Ag is fast enough that CtrlP doesn't need cache
  nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif


" Startify
" ========
let g:startify_list_order = [ [ '  Recent files:' ], 'dir' ]

" make backspace behave in a sane manner
set backspace=indent,eol,start
" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Keybinds
let mapleader=","
let g:NumberToggleTrigger="<C-n>"
nnoremap <leader>t :CtrlP<CR>
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
