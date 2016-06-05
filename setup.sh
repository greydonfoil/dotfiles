#!/bin/bash

if [ 1 ]
  then
	echo "Deleting old symlinks"
	rm ~/.bash_profile
	rm ~/.bashrc
	rm ~/.emacs
	rm -rf ~/.emacs.d
	rm ~/.screenrc
	rm -rf ~/.i3
fi

echo "Adding new symlinks"
ln -s ~/Dropbox/configFiles/bash_profile ~/.bash_profile
ln -s ~/Dropbox/configFiles/bashrc ~/.bashrc
ln -s ~/Dropbox/configFiles/emacs ~/.emacs
ln -s ~/Dropbox/configFiles/emacs.d ~/.emacs.d
ln -s ~/Dropbox/configFiles/i3 ~/.i3
ln -s ~/Dropbox/configFiles/screenrc ~/.screenrc
