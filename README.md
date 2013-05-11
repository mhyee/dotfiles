Dotfiles
========

Some of my configuration files.

I don't expect people to clone and use these files as-is, but you're free to
look around and take whatever you want.

Usage
-----

(Mainly notes for myself.)

    git clone git://github.com/mhyee/dotfiles.git
    cd dotfiles
    git submodule init
    git submodule update
    ./link.sh
    vim -u .vim/bundles.vim +BundleInstall +q

Bash configuration
------------------

I'm using a personal fork of [Bash it](https://github.com/mhyee/bash-it). It's
just as opinionated as I am, so I butchered it and modified it all over the
place.

My entire bash configuration is within my [Bash it
fork](https://github.com/mhyee/bash-it) and `.bash_profile` in this repo.

Other notes
-----------

I decided to use bash instead of zsh.

I use vim as my editor, but I use emacs keybindings for Readline.

Todo
----

Test this config on my other machines, make sure it works on both Mac and Linux.
Move configurations out of Bash-it. Reorganize and document vim config.
