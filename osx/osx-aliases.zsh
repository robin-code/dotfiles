# Global copy to clipboard
[[ "$0" =~ 'zsh' ]] && alias -g CC='| pbcopy'

# Copy SSH public key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard'"
# Copy working directory to clipboard
alias pwdc=' pwd | tr -d "\n" | pbcopy'
alias updateAll='brew update ; brew upgrade ; brew prune ; brew cleanup ; brew doctor'
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"


# System commands
alias halt="osascript -e 'tell app \"System Events\" to shut down'"
alias reboot="osascript -e 'tell app \"System Events\" to restart'"
# Show/hide hidden files in Finder,omz plugins alias

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
# Quick-Look preview files from the command line
alias ql="qlmanage -p &>/dev/null"

# Reload native apps
alias killos="killfinder && killdock && killmenubar"
# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'
alias python=python3
# disable rm 
alias vs='/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code'

# Ignore macos files
alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"
