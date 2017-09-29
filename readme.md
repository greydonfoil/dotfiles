# Installation Instructions:

These are the config files for programs I commonly use. Everything is installed to `~/dotfiles` and symlinks are created using gnu stow. 

## Install commonly used programs:

`sudo add-apt-repository ppa:kelleyk/emacs`

`sudo apt-get update`

`sudo apt-get install emacs25 git stow zsh htop screen`

## Install dotfiles:

`cd ~ && git clone git@github.com:greydonfoil/dotfiles.git`

`sh install.sh`

## Install oh-my-zsh:

Instructions [here.](https://github.com/robbyrussell/oh-my-zsh)

Install powerline fonts using the instructions [here.](https://powerline.readthedocs.io/en/latest/installation/linux.html#fonts-installation)

`chsh -s /bin/zsh` then log out and back in to have ZSH as your default shell. 

## Common Ubuntu Issues

* `gdebi` is a good package manager if you can't install .deb files through the package manager.

## Installing on Windows

The file emacs/windows.emacs in this repo has some Windows-specific information. Specifically:

* Some of the custom fonts installed in Linux don't translate well here and cause slowdowns.
* You can specify a different $HOME (typically done where Dropbox is located, for convenience).
* You need to get some Windows libraries like GNU TLS in order for MELPA to work.

Copy windows.emacs to C:\Users\<username>\AppData\Roaming\.emacs and change the relevant entries to point to the right location. 

To get GNU TLS, follow the instructions in the answer [here.](https://emacs.stackexchange.com/questions/27202/how-do-i-install-gnutls-for-emacs-25-1-on-windows)

You probably don't want your $HOME set to C:/ for three reasons. First, there are permissions problems when you try to edit files in the root directory. Second, Dropbox probably isn't installed here and emacs doesn't like reading Windows symlinks so some paths in my settings.org are broken. Third, if there is a .emacs file (but not _emacs) in C:\, emacs will use this by default and will ignore anything in AppData/Roaming. 
