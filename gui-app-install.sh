#!/usr/bin/env bash

# Supports only macOS and Arch Linux for now, because they are my choise of desktop (laptop) environments.
# This script can also be run independently without special requirements.

# Get OS and architecture to do OS specific actions.
OS="$(uname)"
ARC="$(uname -m)"

# Commonly used apps to install.
# Arrays of package names defined per distribution/operating system because they may differ.
# First we define the arrays as separate arrays because bash doesn't support multidimensional arrays (arrays inside arrays).
macos_taps=()
macos=()
macos_casks=()
arch=()
arch_pip=()
npm=()
rbenv=()
vagrant=()
macos_pip=()

# List of macOS packages to install with Homebrew in alphabetical order.
# A package per line so that changes are easy to diff with git.
macos+=('jq')
macos+=('pyenv')
macos+=('rbenv')
# Homebrew casks separated to their own list.
macos_casks+=('1password')
macos_casks+=('1password-cli')
macos_casks+=('atom')
macos_casks+=('cleanmymac')
macos_casks+=('docker')
macos_casks+=('google-chrome')
macos_casks+=('harvest')
macos_casks+=('postman')
macos_casks+=('screaming-frog-seo-spider')
macos_casks+=('sequel-pro')
macos_casks+=('slack')
macos_casks+=('spotify')
macos_casks+=('telegram-desktop')
macos_casks+=('tuxera-ntfs')
macos_casks+=('vagrant')
macos_casks+=('virtualbox')
macos_casks+=('virtualbox-extension-pack')
macos_casks+=('vyprvpn')
macos_casks+=('zoomus')

# Some apps are better to install from pip on macOS. Make sure pyenv and proper Python version is installed first.
macos_pip+=('ansible')

# Apps to install Mac App Store manually.
# - Amphetamine
# - Gifox
# - iMovie
# - Keynote
# - Magnet
# - Numbers
# - Pages
# - Paste (because it was bought there)
# - Xcode

# Apps to install manually
# - Logitech Options
# - Endpoint Security for Mac (Bitdefender)

# List of Vagrant plugins to install.
vagrant+=('vagrant-hostmanager')
vagrant+=('vagrant-cachier')

# List of Arch Linux packages to install including packages from AUR in alphabetical order.
# A package per line so that changes are easy to diff with git.
arch+=('ansible')
arch+=('pyenv')
arch+=('jq')
arch+=('postman-bin')
arch+=('rbenv')
arch+=('telegram-desktop-bin')
arch+=('vagrant')
arch+=('vlc')
arch+=('qt4') # For vlc GUI

# List of Ruby versions to install and configure.
rbenv+=('2.4.1')

# List of global npm packages to install with -g flag.
npm+=('gulp-cli')
npm+=('hpm-cli')

# Test of the arrays.
printf "List of macOS apps to install: ${macos[*]}\n"
printf "List of macOS gui apps to install: ${macos_casks[*]}\n"
printf "List of Vagrant plugins to install: ${vagrant[*]}\n"
printf "List of Arch Linux apps to install: ${arch[*]}\n"
