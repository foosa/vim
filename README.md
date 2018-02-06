# vim

This repository contains scripts used to configure and setup a custom vim installation.  This vim configuration uses the Vundle system to install custom packages.  Vundle requires outside internet access to github to work correctly.

## Installation
Installation works just by running a make command
```
make install
```

## Update
To update the packages installed by Vundle
```
make update
```

## Uninstall
To remove all files installed by this script
```
rm ~/.vimrc
rm -rf ~/.vim
```

