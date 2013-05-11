set nocompatible                    " choose no compatibility with legacy vi

"" Set up Vundle
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" Theme
Bundle 'chriskempson/tomorrow-theme', {'rtp': 'vim/'}

"" Install bundles
