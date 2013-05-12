set nocompatible                    " choose no compatibility with legacy vi

"" Set up Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" Themes
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}
Bundle 'chriskempson/base16-vim'

"" Install bundles
