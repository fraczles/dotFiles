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
" Pluggins
" ============================================================================
call plug#begin('~/.local/share/nvim/plugged')

  " Misc
  Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
  Plug 'junegunn/goyo.vim'
  Plug 'junegunn/vim-emoji'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Editor
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-surround'

  " Syntax
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'w0rp/ale'

call plug#end()

" ============================================================================
" Plugin settings
" ============================================================================
" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

" Ale
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_format = '%linter% ❯ %s'
let g:ale_linters = {
  \ 'javascript': ['eslint', 'jshint', 'flow'],
  \ 'json': ['jsonlint'],
  \ 'python': ['flake8'],
  \ 'sh': ['shellcheck']
\ }

" ============================================================================
" Key bindings
" ============================================================================
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <leader>p :Files<CR>
nnoremap <leader>z :Goyo<CR>
map <space>n :bn<CR>
map <space>b :bp<CR>
map <space>x :bd<CR>
map <space>w :w<CR>
map <space>q :q<CR>


" ============================================================================
" Colors
" ============================================================================
colorscheme tomorrow-night-eighties
