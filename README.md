# Dotfiles for macOS

This repository contains my personal configuration files for Zsh, Neovim, Ghostty, and more, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## 🚀 Quick Start (macOS)

Follow these steps to set up this configuration on your Mac:

### 1. Install Prerequisites

Make sure you have [Homebrew](https://brew.sh/) installed, then run:

```bash
brew install git stow
```

### 2. Clone This Repository

Clone the dotfiles repo into your home directory:

```bash
git clone https://github.com/fiqryq/dotfile.git ~/.dotfile
```

_Replace `yourusername` and repo name as needed._

### 3. Symlink Configurations with Stow

Change into the dotfile directory and use Stow to create symlinks:

```bash
cd ~/.dotfile
stow zsh
stow nvim
stow ghostty
```

_Add or remove packages as needed._

### 4. Install Dependencies

- **Zsh**: If you use [Oh My Zsh](https://ohmyz.sh/) or other frameworks, install them as needed.
- **Neovim**: Open Neovim and run your plugin manager’s install command (e.g., `:PackerSync`).
- **Ghostty**: Download and install [Ghostty](https://ghostty.app/) if you haven’t already.

### 5. Add Local Secrets (Optional)

If you use a `.env` or `.zshrc_priv` for secrets or machine-specific settings, create it now:

```bash
touch ~/.env
# Add your secrets, e.g.:
# export API_KEY="your_api_key"
```

These files are ignored by git and should not be committed.

### 6. Reload Your Shell

Apply your configuration:

```bash
source ~/.zshrc
```

Or simply open a new terminal window.

## 📁 Structure

```
.dotfile/
  zsh/.zshrc
  nvim/.config/nvim/
  ghostty/.config/ghostty/
  ...
```

- Each directory is a [Stow package](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/).
- Symlinks are created in your home directory or `~/.config`.

## 🛡️ Security

- **Secrets** (API keys, tokens, etc.) should go in `.env` or similar files, which are git-ignored.
- Never commit sensitive information to this repository.

## 📝 Updating

To update your dotfiles:

1. Edit files in `~/.dotfile`
2. Commit and push changes:
   ```bash
   git add .
   git commit -m "Update configs"
   git push
   ```

## 🛠️ Troubleshooting

- If configs don’t load, check that symlinks exist:
  ```bash
  ls -l ~/.zshrc ~/.config/nvim ~/.config/ghostty
  ```
- Remove conflicting files before running `stow`.
- For more help, see [Stow documentation](https://www.gnu.org/software/stow/manual/stow.html).
