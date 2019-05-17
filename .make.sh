#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

dir=~/dotfiles
olddir=~/dotfiles_old # old dotfiles backup directory
files="bashrc vimrc vim zshrc oh-my-zsh" # list of files to symlink in homedir
codeFiles="keybindings.json settings.json spellright.dict" # VSCode configs

## Backup old files
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"
echo "Backing up old files... to $olddir"
for file in $files; do
    mv ~/.$file $olddir/$file
done
mkdir -p $olddir/code
for file in $codeFiles; do
    mv ~/.config/Code/User/$file $olddir/code/$file
done
mv ~/.config/i3/config ~/dotfiles_old/i3config
echo "...done"


## Symlink new configs
echo "Linking new files... to ~"
for file in $files; do
    echo "Creating symlink to $file in ~"
    ln -s $dir/$file ~/.$file
done
for file in $codeFiles; do
    echo "Creating symlink to $file in ~"
    ln $dir/code/$file ~/.config/Code/User/$file
done
echo "Creating symlink to i3 config in ~"
ln $dir/i3config ~/.config/i3/config
echo "...done"
