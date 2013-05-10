set nocompatible                    " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                         " display incomplete commands
set showmode                        " display the current mode
filetype plugin indent on           " load file type plugins + indentations
set modelines=0                     " don't read modelines
set nomodeline                      " disable modelines for security
set mouse=a                         " enable the mouse
set autoread                        " auto reload file if changed outside vim but not inside vim
set noerrorbells                    " disable error bells
set novisualbell                    " disable visual bells
set lazyredraw                      " don't redraw screen during macro playback
set autochdir                       " change to directory of file in buffer
set background=dark
"colorscheme Tomorrow-Night-Bright

" Persistent undo
set undofile
set undolevels=1000
set undoreload=1000

" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
    set undodir=~/.vim/undo
endif

"" Whitespace
set nowrap                          " don't wrap lines
set showbreak=↪                     " if breaking lines, show this char at beginning of line
set tabstop=4 shiftwidth=4          " use four space tabs
set softtabstop=4                   " backspace by four spaces
set shiftround                      " force indents to multiples of shiftwidth
set expandtab                       " use spaces not tabs
set backspace=indent,eol,start      " backspace works on everything
set autoindent
set copyindent                      " copy the previous indentation when autoindenting
set list                            " show invisible chars
set listchars=tab:▸\ ,trail:·

"" Searching
set path+=**                        " when using :find, search in subdirs too
set hlsearch                        " highlight matches
set incsearch                       " incremental searching
set ignorecase                      " case insensitive searching
set smartcase                       " case sensitive if search contains capitals
set gdefault                        " by default, apply substitutions globally

" Use normal regexes when searching
nnoremap / /\v
vnoremap / /\v

"" Editor interface
set textwidth=0
set number                          " show line numbers
set ruler                           " show line and column number of cursor
set cursorline                      " highlight the current line
set laststatus=2                    " always show status line
set nrformats=hex                   " make <C-x> and <C-a> handle numbers with leadings 0s
set colorcolumn=81                  " draw a line at 81 columns

set scrolloff=3                     " cursor is always three lines from top/bottom edge of screen
set sidescroll=4                    " scroll horizontally by four chars, at minimum
set sidescrolloff=8                 " cursor is always eight lines from left/right edge of screen

set splitright                      " open vertical splits on the right
set splitbelow                      " open horizontal splits below

set wildmenu                        " show completions above command line
set wildmode=full                   " complete next full match

set ttyfast                         " fast terminal connection

set pastetoggle=<F2>                " <F2> enables paste mode, which disables autoindent

set nojoinspaces                    " when joining line, use one space after '.'

"" Key remappings
nnoremap ; :

" up/down works on logical lines, not real file lines
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap gj j
nnoremap gk k

vnoremap j gj
vnoremap k gk
vnoremap <Down> gj
vnoremap <Up> gk
vnoremap gj j
vnoremap gk k

inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Yank to end of line; parallels C and D
nnoremap Y y$

" Make 'a jump to line and col and `a jump to col
" This reverses the default behaviour
nnoremap ' `
nnoremap ` '

" Use Q for formatting current paragraph or selection
vnoremap Q gq
nnoremap Q gqap

" Easier window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Tab shortcuts
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>

" Shortcuts for saving
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

" Keep visual block selected when changing indent
vmap > >gv
vmap < <gv

" Emacs-like beginning and end of line
imap <C-e> <C-o>$
imap <C-a> <C-o>^
nmap L $
nmap H ^

"" Mapleader - custom mappings
let mapleader=","                   " remap leader from \ to ,

nnoremap <leader>q :q<CR>           " quickly close window

"" Quickly edit/reload vimrc
nnoremap <silent> <leader>ev :e $MYVIMRC<CR>
nnoremap <silent> <leader>sv :so $MYVIMRC<CR>

" Strip all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" Yank/paste to OS clipboard
nnoremap <leader>y "*y
nnoremap <leader>Y "*yy
nnoremap <leader>p "*p
nnoremap <leader>P "*P

nnoremap <silent> <leader>/ :nohlsearch<CR>    " Clear highlighted searches



autocmd FileType make setlocal noexpandtab
