set number relativenumber
set colorcolumn=130
set laststatus=0
set smartindent
set autoindent
set expandtab
set smarttab
set tabstop=2
set shiftwidth=2
set showtabline=2
set formatoptions-=cro
set wrap
set hidden
set encoding=utf-8
set fileencoding=utf-8
set ruler
set mouse=a
set noswapfile
set nobackup
set cursorline
set encoding=UTF-8
set splitbelow
set splitright
set background=dark
set autochdir
syntax enable
filetype on
filetype indent on
filetype plugin on

set matchpairs+=<:>
" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start
" Speed up scrolling in Vim
set ttyfast

" Coc Bug Fix

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" KEYBINDINGS

imap ii <Esc>

map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <C-k> :tabnext<CR>
map <C-j> :tabprevious<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-r> :Files<CR>
map <C-f> /
map <C-b> :NERDTreeToggle<CR>
map <C-g> :FloatermNew<CR>
map <C-z> :undo<CR>
map <C-y> :redo<CR>
map <C-I> :Prettier<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim'
Plug 'voldikss/vim-floaterm'
Plug 'mg979/vim-visual-multi'
Plug 'ryanoasis/vim-devicons'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/vim-prettier'
Plug 'tiagovla/tokyodark.nvim'
Plug 'vim-airline/vim-airline'
Plug 'spolu/dwm.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'tpope/vim-surround'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'eslint/eslint'
Plug 'wuelnerdotexe/vim-astro'
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:tokyodark_color_gamma = '0.92'

color tokyodark
let g:airline_theme='minimalist'

" EJS SYNTAX BUG FIX

au BufNewFile,BufRead *.ejs set filetype=html

" STATUSBAR

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'

" OTHER

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:astro_typescript = 'enable'
" let g:astro_stylus = 'enable'

