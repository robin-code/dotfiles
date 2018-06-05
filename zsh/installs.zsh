#!/usr/bin/env zsh

mkdir -p "$BIN_PATH"
mkdir -p "$HOME/.cache/zsh-plugins"

# git-cheat is a dependency free git helper in your command-line
if [[ ! -e "${BIN_PATH}/git-cheat" ]]; then
    curl -s https://raw.githubusercontent.com/0xAX/git-cheat/master/git-cheat > "${BIN_PATH}/git-cheat" && chmod 0755 "${BIN_PATH}/git-cheat"
fi

# A plugin to make directory listings more readable
if [[ ! -f ~/.cache/zsh-plugins/k/k.sh ]]; then
    mkdir -p ~/.cache/zsh-plugins/k
    git clone https://github.com/supercrabtree/k.git ~/.cache/zsh-plugins/k
fi
[[ -n "$DEBUG" ]] && trace-time "Loading external plugin k"
source ~/.cache/zsh-plugins/k/k.sh

# Fish shell-like like syntax highlighting for Zsh
if [[ ! -f ~/.cache/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    mkdir -p ~/.cache/zsh-plugins/zsh-syntax-highlighting
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.cache/zsh-plugins/zsh-syntax-highlighting
fi
[[ -n "$DEBUG" ]] && trace-time "Loading external plugin zsh-syntax-highlighting"
source ~/.cache/zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Fish shell-like fast/unobtrusive autosuggestions for zsh.
if [[ ! -f ~/.cache/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    mkdir -p ~/.cache/zsh-plugins/zsh-autosuggestions
    git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.cache/zsh-plugins/zsh-autosuggestions
fi
[[ -n "$DEBUG" ]] && trace-time "Loading external plugin zsh-autosuggestions"
source ~/.cache/zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Desktop notifications for long-running commands in zsh.
if [[ ! -f ~/.cache/zsh-plugins/zsh-notify/notify.plugin.zsh ]]; then
    mkdir -p ~/.cache/zsh-plugins/zsh-notify
    git clone https://github.com/marzocchi/zsh-notify.git ~/.cache/zsh-plugins/zsh-notify
fi
[[ -n "$DEBUG" ]] && trace-time "Loading external plugin zsh-notify"
source ~/.cache/zsh-plugins/zsh-notify/notify.plugin.zsh
zstyle ':notify:*' command-complete-timeout 10
zstyle ':notify:*' success-title "Command completed successfully"
zstyle ':notify:*' error-title "Command completed with warning"
