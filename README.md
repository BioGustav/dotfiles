# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
dnf install git
```

### Stow

```
dnf install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
git clone git@github.com:BioGustav/dotfiles.git
cd dotfiles
```

then use GNU stow to create symlinks

```
stow .
```

## Configurations
In order to let git ignore changes in `.user.gitconfig`, run this command in `~/dotfiles`:
```
git update-index --skip-worktree .user.gitconfig
```
Configure `.user.gitconfig`
