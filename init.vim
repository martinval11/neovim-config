set number rnu
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
set background=dark
syntax on
filetype on
filetype indent on
filetype plugin on
set backspace=indent,eol,start
set ttyfast

autocmd FileChangedShell * let v:fcs_choice = 'reload'

imap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" KEYBINDINGS

imap ii <Esc>

map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <A-n> :tabnext<CR>
map <A-p> :tabprevious<CR>
map <C-s> :w<CR>
map <C-q> :q<CR>
map <C-f> /
map <C-g> :ter<CR> 
map <C-z> :undo<CR>
map <C-y> :redo<CR>
map <Tab> :Prettier<CR>

" PLUGINS

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'yggdroot/indentline'
Plug 'raimondi/delimitmate'
Plug 'neoclide/coc.nvim'
Plug 'Exafunction/codeium.vim'
Plug 'mg979/vim-visual-multi'
Plug 'mxw/vim-jsx'
Plug 'sheerun/vim-polyglot'
Plug 'kien/rainbow_parentheses.vim'
Plug 'prettier/vim-prettier'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'eslint/eslint'
call plug#end()

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

source ~/.config/nvim/mountain.vim

let g:coc_global_extensions = [ 'coc-tsserver' ]

let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" OTHER

let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:astro_typescript = 'enable'
let g:astro_stylus = 'enable'

