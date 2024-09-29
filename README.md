# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following packages installed on your system

### Git

```
# Arch Linux
pacman -S git

# Fedora
dnf install git

# Debian
apt install git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:EnTRoPY0120/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
