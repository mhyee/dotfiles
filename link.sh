#!/bin/bash

dir=`pwd`

for file in .*; do
  if [[ $file == ".git" || $file == ".gitmodules" || $file == "." || $file == ".." ]]; then
    continue
  fi
  ln -sv $dir/$file ~
done
