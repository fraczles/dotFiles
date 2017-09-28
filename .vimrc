" ============================================================================
" Basic settings
" ============================================================================
set t_Co=256
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set tabstop=4                     " How many columns in a tab
set shiftwidth=2                  " How many columns in a >> or << operation
set softtabstop=2                 " How many columns vim uses when <Tab> is pressed in insert mode
set expandtab                     " Tabs are spaces
set gdefault                      " Searches and replaces are global by default
set encoding=utf-8
set backspace=indent,eol,start
set ignorecase
set incsearch
set hlsearch
set showmatch
set cursorline
set ruler
set scrolloff=3
set showmode
set showcmd
set termguicolors
set relativenumber
set number

" ============================================================================
" Key bindings
" ============================================================================
vnoremap <leader>c "*y<CR>
nnoremap <leader>t :Files<CR>
map <space>n :bn<CR>
map <space>b :bp<CR>
map <space>x :bd<CR>
map <space>w :w<CR>
map <space>q :q<CR>


" ============================================================================
" Pluggins
" ============================================================================
call plug#begin('~/.local/share/nvim/plugged')

  " Misc
  Plug 'junegunn/seoul256.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/fzf.vim'

  " Editor
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'

  " Syntax
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'

call plug#end()


colorscheme seoul256
