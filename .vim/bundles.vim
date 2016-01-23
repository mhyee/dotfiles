set nocompatible                    " choose no compatibility with legacy vi

"" Set up Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

"" Themes
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'chriskempson/base16-vim'

"" Install bundles

" Latest Ruby support for vim
Bundle 'vim-ruby/vim-ruby'
" Latest Markdown support for vim
Bundle 'tpope/vim-markdown'
" Latest Haskell support for vim
Bundle 'wlangstroth/vim-haskell'
" HTML5 syntax support
Bundle 'othree/html5-syntax.vim'
" CSS3 syntax support
Bundle 'hail2u/vim-css3-syntax'
" Latest Git runtime files support for vim
Bundle 'tpope/vim-git'
" MIPS syntax
Bundle 'mips.vim'
" Scala
Bundle 'jergason/scala.vim'

" When searching, say 'At match N out of M'
Bundle 'IndexedSearch'
" Automatically insert 'end' as needed, in Ruby, C/C++ preprocessor, etc
Bundle 'tpope/vim-endwise'
" Search for and use project .vimrc files
Bundle 'krisajenkins/vim-projectlocal'
" Easily comment/uncomment multiple lines
Bundle 'tpope/vim-commentary'
" Surround text with parentheses, brackets, quotes, etc
Bundle 'tpope/vim-surround'
" Repeat plugin maps
Bundle 'tpope/vim-repeat'
" Move around easier without typing numbers
Bundle 'Lokaltog/vim-easymotion'
" Expand current window to full screen
Bundle 'ZoomWin'
" Easily switch between source/header files
Bundle 'a.vim'

" Try these plugins later, when/if I use Rails again
" Bundle 'tpope/vim-bundler'
" Bundle 'tpope/vim-rake'
" Bundle 'tpope/vim-rails'

" Nicer status line
Bundle 'Lokaltog/powerline'
" Fuzzy file finder
Bundle 'kien/ctrlp.vim'
" Interface to Ack
Bundle 'mileszs/ack.vim'
" Interface to Vim's undo tree
Bundle 'sjl/gundo.vim'
" Git wrapper
Bundle 'tpope/vim-fugitive'

" Code completion as you type
Bundle 'Valloric/YouCompleteMe'
" Syntax checking
Bundle 'scrooloose/syntastic'

" Interactive proofs with Coq
" vimbufsync is a dependency
Bundle 'def-lkb/vimbufsync'
Bundle 'tbelaire/coquille'
