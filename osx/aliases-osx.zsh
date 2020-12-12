# Global copy to clipboard
[[ "$0" =~ 'zsh' ]] && alias -g CC='| pbcopy'

# Copy SSH public key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard'"

# Copy working directory to clipboard
alias pwdc=' pwd | tr -d "\n" | pbcopy'

# Use GNU tools instead of bsd ones
alias awk='\gawk'
#alias sed='\gsed'
alias grep='\ggrep'

# Disk usage
alias df='gdf -h | grep -v tmpfs | grep -v "/docker/"'
alias du='gdu -h'
alias du0='gdu -hd0'
alias du1='gdu -hd1 | sort -k2' ## sort by name
alias du1s='gdu -hd1 | sort -h' ## sort by size

# System commands
alias sudo='sudo ' ## Allow aliases to be sudo’ed
alias watch='watch ' ## Allow aliases to be watched
alias halt="osascript -e 'tell app \"System Events\" to shut down'"
alias reboot="osascript -e 'tell app \"System Events\" to restart'"
alias agall='brew update ; brew upgrade ; brew prune ; brew cleanup ; brew doctor'

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Line wrapping
alias wrap="tput smam"
alias nowrap="tput rmam"

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="\ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Ignore macos files
alias zip="zip -x *.DS_Store -x *__MACOSX* -x *.AppleDouble*"

# Flush DNS
alias flushdns="sudo killall -HUP mDNSResponder"

# Quick-Look preview files from the command line
alias ql="qlmanage -p &>/dev/null"

# Reload native apps
alias killos="killfinder && killdock && killmenubar"
# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'
alias canary='/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary'

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

## alias brew
alias brewi="brew install"
alias brewu="brew uninstall"
alias brewc="brew install --cask"
alias brewall='brew update ; brew upgrade ; brew prune ; brew cleanup -s ; brew cask cleanup ; brew doctor'

alias python=python3
# Cleanup
alias rmds="find . -type f -name '*.DS_Store' -ls -delete"
#alias del="trash-rm"       # del / trash are shorter than trash-rm
#alias delf="trash-put"
#alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"