" set theme
colorscheme onedark
" use syntax highlighting
syntax on

" turn off vi ompatibility
set nocompatible

" show line numbers
set number

" show status bar (2 = always)
set laststatus=2

" hide default mode display
set noshowmode

" wrap long lines
set wrap

" highlight the curent line
set cursorline

" tabs as spaces
set expandtab
set tabstop=4
set shiftwidth=4

" backspace settings
set backspace=indent,eol,start

" return curser to last position when reopening a file
if has("autocmd")
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" add plugins
call plug#begin()

    Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'tpope/vim-surround'
    Plug 'itchyny/lightline.vim'
    Plug 'Townk/vim-autoclose'

call plug#end()

" NERDTree settings
map <C-f> :NERDTreeToggle<CR> " open file browser with Ctrl-f
let NERDTreeShowHidden=1 " show hidden files by default
let NERDTreeQuitOnOpen=1 " close NERDTree window when a file is selected

" navigate tabs with Ctrl-t
map <C-t> :tabnew<CR> " New tab Ctrl-t
map <C-t>n :tabnext<CR> " Switch to next tab Ctrl-t + n
map <C-t>p :tabprevious<CR> " Switch to previous tab Ctrl-t + p
map <C-t>f :tabfirst<CR> " Switch to first tab Ctrl-t + f
map <C-t>l :tablast<CR> " Switch to last tab Ctrl-t + l

" set lighline colorscheme
let g:lightline = { 'colorscheme': 'Tomorrow_Night_Bright' }
