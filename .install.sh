#!/bin/bash

set -e

echo "==> Checking for Homebrew..."
if ! command -v brew &>/dev/null; then
  echo "Homebrew not found. Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "Homebrew found."
fi

echo "==> Updating Homebrew..."
brew update

echo "==> Installing Zsh..."
brew install zsh

echo "==> Installing Oh My Zsh..."
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh already installed."
fi

echo "==> Installing Neovim..."
brew install neovim

echo "==> All tools installed!"
