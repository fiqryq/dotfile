
# Set up the Zsh shell environment
export ZSH="$HOME/.oh-my-zsh"
export PATH=$PATH:~/go/bin

# Set name of the theme to load
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
# source pyenv/bin/activate

# Alias
alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -lah"

# FZF config
alias ff="fzf --style minimal \
    --preview 'bat --style=numbers --color=always {}' --bind 'focus:transform-header:file --brief {}'"

# Config Alias
alias ecnvm="cd ~/.config/nvim && nvim ."
alias enablehud="/bin/launchctl setenv MTL_HUD_ENABLED 1"
alias disablehud="/bin/launchctl setenv MTL_HUD_ENABLED 0"

if [[ -n $SSH_CONNECTION ]]; then
  # Load local environment variables.
  # Load default editor.
else
  export EDITOR='nvim'
  [[ -f $HOME/.env.local ]] && source $HOME/.env.local
fi

# Load Starship prompt
eval "$(starship init zsh)"

# Created by `pipx` on 2024-07-12 09:33:29
export PATH="$PATH:$HOME/.local/bin"
export DOTENV_PASS=${DOTENV_PASS}

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Added by LM Studio CLI (lms)
export PATH="$PATH:$HOME/.cache/lm-studio/bin"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=($HOME/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

