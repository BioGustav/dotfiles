# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following packages installed on your system:
* git
* stow

### Fedora / RHEL

```
sudo dnf install git stow
```

### Arch (btw)

```
sudo pacman -S --needed git stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:BioGustav/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow . --dotfiles
```

## Configurations
In order to let git ignore changes in `.user.gitconfig`, run this command in `~/dotfiles`:
```
git update-index --skip-worktree .user.gitconfig
```
Configure `.user.gitconfig`
