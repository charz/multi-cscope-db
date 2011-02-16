#!/bin/bash

echo "Copy cscope_maps.vim to ~/.vim/plugin"
cp -a plugin/cscope_maps.vim ~/.vim/plugin/

echo "Copy goproj.sh to ~/bin"
cp -a bin/goproj.sh ~/bin/

echo "Done"
