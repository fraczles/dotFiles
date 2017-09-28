set t_Co=256
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set tabstop=4
set shiftwidth=2
set softtabstop=2
set expandtab
set gdefault
set mouse=c
set encoding=utf-8
set backspace=indent,eol,start
set ignorecase
set incsearch
set hlsearch
set showmatch
set cursorline
set ruler
set formatoptions=qrn1
set scrolloff=3
set showmode
set showcmd
set wildmode=list:longest
"set guifont=Consolas\ 20
set termguicolors
set laststatus=2
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set foldmethod=indent
set foldlevelstart=99
set relativenumber
set number

" fzf
set rtp+=~/.fzf



" default colors
syntax on
filetype on
au BufNewFile,BufRead Dockerfile      set filetype=sh

" NEOBUNDLE STUFF
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'


  NeoBundle 'fisadev/vim-isort'

  NeoBundle 'easymotion/vim-easymotion'
  NeoBundle 'mkarmona/colorsbox'
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
  NeoBundle 'kien/ctrlp.vim'
  NeoBundle 'sjl/gundo.vim'
  NeoBundle 'sudo.vim'
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'tpope/vim-unimpaired'
  NeoBundle 'haya14busa/incsearch.vim'
  " NeoBundle 'jeetsukumaran/vim-buffergator'

  " Language / Framework bundles
  NeoBundle 'gregsexton/MatchTag'
  NeoBundle 'python-rope/ropevim'
  NeoBundle 'tpope/vim-markdown'
  NeoBundle 'kchmck/vim-coffee-script'
  NeoBundle 'pangloss/vim-javascript'
  let ropevim_vim_completion=1
  let ropevim_extended_complete=1
  " NeoBundle 'nsf/gocode', {'rtp': 'vim/'}
  NeoBundle 'fatih/vim-go'
  " NeoBundle 'Blackrush/vim-gocode'
  NeoBundle 'tpope/vim-rails'
  NeoBundle 'wilsaj/chuck.vim'
  NeoBundle 'Matt-Deacalion/vim-systemd-syntax'
  NeoBundle 'tmhedberg/matchit'
  NeoBundle 'rust-lang/rust.vim'
  NeoBundle 'sophacles/vim-processing'
  NeoBundle 'isRuslan/vim-es6'
  NeoBundle 'ElmCast/elm-vim'
  " NeoBundle 'andviro/flake8-vim'
  NeoBundle 'junegunn/fzf.vim'
  NeoBundle 'bronson/vim-trailing-whitespace'

  NeoBundle 'junegunn/seoul256.vim'
  NeoBundle 'w0rp/ale'
  " Vim Ale
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

  " Remember to install flake8:
  "   python2 -m pip install flake8 && python3 -m pip install flake8
  let g:ale_python_flake8_executable = 'python3'
  let g:ale_python_flake8_args = '-m flake8'

  let g:flake8_show_in_gutter=0

  " vim-gitgutter
  NeoBundle 'airblade/vim-gitgutter'

  " limelight
  NeoBundle 'junegunn/limelight.vim'

  " completion stuff
  NeoBundle 'Shougo/deoplete.nvim'
  NeoBundle 'zchee/deoplete-jedi'
  NeoBundle 'Shougo/neocomplete.vim'

  " Goyo & Zenroom
  NeoBundle 'amix/vim-zenroom2'
  NeoBundle 'junegunn/goyo.vim'
  let g:goyo_width=100
  let g:goyo_margin_top=4
  let g:goyo_margin_bottom=4
  let g:goyo_linenr=1

  " Nerdtree
  NeoBundle 'scrooloose/nerdtree'
  let NERDTreeShowBookmarks=1
  let NERDTreeChDirMode=0
  let NERDTreeMouseMode=2
  let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=1
  let g:nerdtree_tabs_open_on_gui_startup=0
  autocmd VimEnter * wincmd l

  NeoBundle 'chriskempson/vim-tomorrow-theme'
  " NeoBundle 'morhetz/gruvbox'


  " Unite
  NeoBundle 'mileszs/ack.vim'
  NeoBundle 'thinca/vim-unite-history'
  NeoBundle 'Shougo/neomru.vim'
  NeoBundle 'Shougo/unite.vim'
  NeoBundle 'Shougo/unite-help'
  NeoBundle 'Shougo/unite-outline'
  NeoBundle 'Shougo/unite-session'
  NeoBundle 'Shougo/vimproc', { 'build': {
  \  'windows': 'make -f make_mingw32.mak',
  \  'cygwin': 'make -f make_cygwin.mak',
  \  'mac': 'make -f make_mac.mak',
  \  'unix': 'make -f make_unix.mak',
  \} }
  let g:unite_source_history_yank_enable = 1
  let g:unite_source_grep_default_opts = '-irnHl --exclude-dir "\.git" --exclude-dir "vendor" --exclude-dir "tmp"'
call neobundle#end()

NeoBundleCheck

colorscheme tomorrow-night-eighties
"colorscheme tomorrow-night
"    hi htmlArg gui=italic
"    hi Comment gui=italic
"    hi Type    gui=italic
"    hi htmlArg cterm=italic
"    hi Comment cterm=italic
"    hi Type    cterm=italic

" key bindings
vnoremap <leader>c "*y<CR>
nnoremap <leader>t :Files<CR>
nnoremap <Leader>s :/\<<C-r><C-w>\>/<CR>
vnoremap <Leader>\\ :nohlsearch<CR>
map <space>n :bn<CR>
map <space>b :bp<CR>
map <space>x :bd<CR>
map <space>o :tabe<space>
map <space>w :w<CR>
map <space>q :q<CR>

" ale
let g:ale_linters = {
  \ 'javascript': ['eslint', 'jshint', 'flow'],
  \ 'json': ['jsonlint'],
  \ 'python': ['flake8'],
  \ 'sh': ['shellcheck']
\ }

" term
map <c-w>d :bp<bar>sp<bar>bn<bar>bd<CR>
map <c-w>s :sp<CR>
map <c-w>v :vs<CR>
map <c-w>t :term /usr/bin/env bash -l<CR>

" search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" basic plugins
nnoremap <silent> <leader>z :Goyo<cr>
nnoremap <Leader><tab> :NERDTreeToggle<CR>
nmap <Leader>G :GitGutterLineHighlightsToggle<CR>

nnoremap <leader>l :Limelight!!<CR>
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_default_coefficient = 0.7
let g:limelight_paragraph_span = 1
let g:limelight_priority = -1

" python: iSort
nnoremap <Leader>i :Isort<CR>
" unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('file_rec,file_rec/async,file_mru,file,buffer,grep', 'ignore_globs', split(&wildignore, ','))
nnoremap <leader>g :<C-u>Unite -auto-preview -default-action=tabopen               grep:.<CR>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -default-action=open outline<CR>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=mru -default-action=vsplit   file_mru<CR>
nnoremap <leader>y :<C-u>Unite -buffer-name=yank -default-action=vsplit            history/yank<CR>

" neocomplete
let g:neocomplete#enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

" python
let s:python = system("which python")
if !empty(s:python)
  map <Leader>j :%!python -m json.tool<CR>
endif


" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" processing-lang
let s:processing = system("which processing-java")
if !empty(s:processing)
  nnoremap <Leader>p
  \ :!rm -rf /tmp/processing/*
  \ &&
  \ processing-java --output=/tmp/processing --sketch=%:p:h
  \ --force
  \ --run<CR>
endif

" vim airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" autocomplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#jedi#show_docstring = 1


augroup crontab_settings
  autocmd!
  autocmd FileType crontab setlocal backupcopy=yes
augroup END

