#!/bin/bash

here=`pwd`
for elem in vim bashrc gitconfig tmux.conf vimrc
do
	rm -f ~/.$elem 
	ln -s $here/$elem ~/.$elem
done

for elem in config/*
do
	rm -rf ~/.$elem
	ln -s $here/$elem ~/.$elem
done
