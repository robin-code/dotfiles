#!/usr/bin/env zsh

## Global aliases only works with ZSH
if [[ "$0" =~ 'zsh' ]]; then
    # Global directories aliases
    alias -g ..='..'
    alias -g ...='../..'
    alias -g ....='../../..'
    alias -g .....='../../../..'
    alias -g ......='../../../../..'
    alias -g .......='../../../../../..'

    # Global commands aliases
    alias -g X='| xargs'
    alias -g G='| grep'
    alias -g N='| grep -v'
    alias -g F='| fzf --ansi'
    alias -g E='| grep-passthru'
    alias -g XS='| xargs subl'
    alias -g HR='| highlight red'
    alias -g HG='| highlight green'
    alias -g HB='| highlight blue'
    alias -g HM='| highlight magenta'
    alias -g HC='| highlight cyan'
    alias -g HY='| highlight yellow'
    alias -g C='| wc -l'
    alias -g S='| sort'
    alias -g H='| head'
    alias -g L="| less"
    alias -g T='| tail'
    alias -g P='| pygmentize -O style=monokai -f console256 -g'
else
    # Directories aliases
    alias ..='cd ..'
    alias ...='cd ../..'
    alias ....='cd ../../..'
    alias .....='cd ../../../..'
    alias ......='cd ../../../../..'
    alias .......='cd ../../../../../..'
fi

alias pwd=' pwd'
alias cd=' cd'
alias l='ls -lh --group-directories-first'
alias ll='ls -lhA --group-directories-first'
alias llm='ls -lhAt --group-directories-first' ## "m" for sort by last modified date
alias llc='ls -lhAU --group-directories-first' ## "c" for sort by creation date
alias lls='ls -lhAS --group-directories-first' ## "s" for sort by size
alias lla='ll-archive' ## "a" for archive
alias k='exa -abghHlS --group-directories-first'
alias kk='exa -abghHlS --group-directories-first --git'
alias kt='exa -hlTl --group-directories-first'
alias ktt='exa -hlTlL=2 --group-directories-first'
alias kttt='exa -hlTlL=3 --group-directories-first'

# 1 letter commands shortcuts
alias p=' dirs -v | head -10' ## most used dirs for current session


# Others commands shortcuts
alias dg='desk go'
alias zd='z --del'
alias k9='kill -9'
alias rd='rmdir'
alias md='mkdir -p'
alias mcd='mkdir-cd'
alias mkcd='mkdir-cd'
alias rmrf="rm -rf"

alias cpr="cp -r"
alias bak='backup-file'
alias psy='psysh'
alias run='make'
alias tailf='tail -f'
alias less='less -r'
alias whence='type -a'
alias whereis='whereis'
alias grep='grep --color=auto'
alias vgrep='grep -v --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mu='mutt'
alias mf='mutt -F'
alias zshrc='source ~/.zshrc' ## Reload config
alias dotfiles='(cd ${DOTFILES_PATH} && git pull) ; (cd ${DOTFILES_PATH}/../private && git pull) ; source ~/.zshrc' ## Pull dotfiles from repositories and reload config
alias snippets="cat ${DOTFILES_PATH}/zsh/snippets.zsh | sed -r 's/^function //g' | sed -r 's/^# (.*)/\x1b[32m\x1b[1m# \1\x1b[0m/'"

alias sudo='sudo ' ## Allow aliases to be sudo’ed
alias watch='watch ' ## Allow aliases to be watched

# System stats
alias free='free -h'
alias ps='ps auxf'

# Search & find
alias sg='grep -rinw "." -e ' ## inside files
alias sa='ack -Hir' ## with ack
alias ss='sift -n' ## with sift
alias rg='rg -S' ## with ripgreprg
alias ff='find . -type f -iname ' ## insensitive filename
alias fr='find-and-replace' ## find and replace in current dir

# Docker
alias doi="docker images"
alias dov="docker volume"
alias doe="docker exec"
alias dok="docker kill"
alias dops="docker ps"
alias dorm="docker rm"
alias dormi="docker rmi"
alias docker-clear=docker system prune -f
alias docker-clear-prnue=docker system prune -f && docker image prune -af

# Docker compose
alias da="docker-compose exec php php artisan"
alias dc="docker-compose"
alias dcr="docker-compose run"
alias dcb="docker-compose build"
alias dcbf="docker-compose build --force-rm --no-cache"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dce="docker-compose exec"
alias dphp="docker-compose exec php php"
alias dcsa="docker-compose start"
alias dcso="docker-compose stop"
alias dcrm="docker-compose rm"
alias dsss="docker-sync-stack start"
alias dssc="docker-sync-stack clean"

# rsync
alias rsync-copy="rsync -av --progress -h --exclude-from=$HOME/.cvsignore"
alias rsync-move="rsync -av --progress -h --remove-source-files --exclude-from=$HOME/.cvsignore"
alias rsync-update="rsync -avu --progress -h --exclude-from=$HOME/.cvsignore"
alias rsync-synchronize="rsync -avu --delete --progress -h --exclude-from=$HOME/.cvsignore"

# Files permissions
alias 400='chmod 400 -R'
alias 600='chmod 600 -R'
alias 640='chmod 640 -R'
alias 644='chmod 644 -R'
alias 740='chmod 740 -R'
alias 750='chmod 750 -R'
alias 775='chmod 775 -R'
alias 777='chmod 777 -R'
alias www="chown www-data:www-data * .* -R"
alias mx='chmod u+x'

# NPM
alias nrw='npm run watch'
alias nrp='npm run prod'

# ngrok
alias ng='ngrok http 80 -region eu'

# SSH helpers
alias tunnel='ssh -f -N' ## Create a tunnel
alias tunnel-mysql='ssh -N -L 3307:localhost:3306' ## Create a MySQL tunnel
alias tunnel-socks='ssh -N -D 8080' ## SOCKS proxy
alias tunnel-list='ps aux | grep "ssh -f -N" | grep -v "grep"' ## List tunnels

# Datetime helpers
alias week='date +%V'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Network & ISP tests
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myips="ifconfig -a | grep -o 'inet6\? \(ad\?dr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:|adr:)? ?/, \"\"); print }' | grep -v '127.0.0.1' | grep -v '::1'"
alias localip="ifconfig | grep -Eo 'inet (addr:|adr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias ipstats="netstat -ntu | tail -n +3 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n"
# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Flush Directory Service cache
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

alias ports="lsof -ni | grep LISTEN"
alias ns="nslookup"
alias he="sudo $EDITOR /etc/hosts"

# Curl & web helpers
alias dl='curl --continue-at - --location --progress-bar --remote-name --remote-time' ## download a file
alias weather='curl -A curl wttr.in'
alias wget-site='wget --mirror -p --convert-links -P'
alias header='curl-header'
alias purge='curl-purge'
for method in GET HEAD POST PUT DELETE PURGE TRACE OPTIONS; do
    alias "$method"="http '$method'"
done

# Online pastebins
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias clbin="curl -F 'clbin=<-' https://clbin.com"

# Because Oo
alias tableflip="echo '(ノಠ益ಠ)ノ彡┻━┻'" ## see https://gist.github.com/endolith/157796
alias utf8test="wget -qO- http://8n1.org/utf8" ## test terminal UTF8 capabilities


# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'


# Intuitive map function
# For example, to list all directories that contain a certain file:
# find . -name .gitattributes | map dirname
alias map="xargs -n1"

# One of @janmoesen’s ProTip™s
for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
	alias "${method}"="lwp-request -m '${method}'"
done

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"


# Reload the shell (i.e. invoke as a login shell)
alias reload="exec ${SHELL} -l"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'


#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# 编辑器简写
alias vi="vim"
## alias k8s
alias kgp="kubectl get pods"
alias kgd="kubectl get deployment"
alias kgs="kubectl get services "
alias kdp="kubectl describe pods "


# maven 构建命令跳过测试别名
alias mi="mvn clean install -Dmaven.test.skip=true"
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Get week number
alias week='date +%V'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias cl="clear"
alias sz="source ~/.zshrc"
alias cd.="cd ~/dotfiles"
alias work="cd ~/work"
alias github="cd ~/work/github"
alias robin-pro="cd ~/work/robin-project"
alias tl="tmux ls"

