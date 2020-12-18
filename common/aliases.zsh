#!/usr/bin/env zsh

## Global aliases only works with ZSH
if [[ "$0" =~ 'zsh' ]]; then
    # Global directories aliases
    alias -g ..='..'
    alias -g ...='../..'

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
alias bak='backup-file'

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Shortcuts
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias cl="clear"
alias sz="source ~/.zshrc" ## Reload config
alias sb="source ~/.bashrc"
alias cd.="cd ~/dotfiles"
alias work="cd ~/work"
alias github="cd ~/work/github"

alias mkcd='mkdir-cd'
alias cpr="cp -r"
alias tailf='tail -f'
alias less='less -r'

alias grep='grep --color=auto'
alias vgrep='grep -v --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Search & find
alias sg='grep -rinw "." -e ' ## inside files
alias sa='ack -Hir' ## with ack
alias ss='sift -n' ## with sift
alias rg='rg -S' ## with ripgreprg
alias ff='find . -type f -iname ' ## insensitive filename
alias fr='find-and-replace' ## find and replace in current dir

# Files permissions
alias 400='sudo chmod 400 -R'
alias 600='sudo chmod 600 -R'
alias 640='sudo chmod 640 -R'
alias 644='sudo chmod 644 -R'
alias 740='sudo chmod 740 -R'
alias 750='sudo chmod 750 -R'
alias 755='sudo chmod 755 -R'
alias 775='sudo chmod 775 -R'
alias 777='sudo chmod 777 -R'
alias mx='chmod u+x'

# rsync
#alias rsync-copy="rsync -av --progress -h --exclude-from=$HOME/.cvsignore"
#alias rsync-move="rsync -av --progress -h --remove-source-files --exclude-from=$HOME/.cvsignore"
#alias rsync-update="rsync -avu --progress -h --exclude-from=$HOME/.cvsignore"
#alias rsync-synchronize="rsync -avu --delete --progress -h --exclude-from=$HOME/.cvsignore"


# SSH helpers
alias tunnel='ssh -f -N' ## Create a tunnel
alias tunnel-mysql='ssh -N -L 3307:localhost:3306' ## Create a MySQL tunnel
alias tunnel-socks='ssh -N -D 8080' ## SOCKS proxy
alias tunnel-list='ps aux | grep "ssh -f -N" | grep -v "grep"' ## List tunnels

# ngrok
alias ng='ngrok http 80 -region eu'
# Network & ISP tests
alias ip='dig +short myip.opendns.com @resolver1.opendns.com'
alias myips="ifconfig -a | grep -o 'inet6\? \(ad\?dr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:|adr:)? ?/, \"\"); print }' | grep -v '127.0.0.1' | grep -v '::1'"
alias localip="ifconfig | grep -Eo 'inet (addr:|adr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias speedtest="wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip"
alias ipstats="netstat -ntu | tail -n +3 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n"
# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
alias ns="nslookup"

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

alias dco='docker-compose'
alias dcb='docker-compose build'
alias dce='docker-compose exec'
alias dcps='docker-compose ps'
alias dcrestart='docker-compose restart'
alias dcrm='docker-compose rm'
alias dcr='docker-compose run'
alias dcstop='docker-compose stop'
alias dcup='docker-compose up'
alias dcupd='docker-compose up -d'
alias dcdn='docker-compose down'
alias dcl='docker-compose logs'
alias dclf='docker-compose logs -f'
alias dcpull='docker-compose pull'
alias dcstart='docker-compose start'
alias dck='docker-compose kill'


# NPM
alias nrw='npm run watch'
alias nrp='npm run prod'
alias nrd='npm run develop'

# Curl & web helpers
alias cdl='curl --continue-at - --location --progress-ba
r --remote-name --remote-time' ## download a file
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

# URL-encode strings
#alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Merge PDF files, preserving hyperlinks
# Usage: `mergepdf input{1,2,3}.pdf`
alias mergepdf='gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=_merged.pdf'


#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# maven 构建命令跳过测试别名
alias mi="mvn clean install -Dmaven.test.skip=true"
alias mvnc='mvn clean'
alias mvnci='mvn clean install'
alias mvncist='mvn clean install -DskipTests'
alias mvncisto='mvn clean install -DskipTests --offline'
alias mvnct='mvn clean test'
alias mvncv='mvn clean verify'
alias mvncvst='mvn clean verify -DskipTests'
alias mvndt='mvn dependency:tree'
alias mvnjetty='mvn jetty:run'
alias mvnsrc='mvn dependency:sources'
alias mvnt='mvn test'
alias mvntc='mvn tomcat:run'
alias mvntc7='mvn tomcat7:run'
alias mvn-updates='mvn versions:display-dependency-updates'


## alias git
alias grba='git rebase --abort'
alias grbc='git rebase --continue'
alias grbs='git rebase --skip'
alias grbi='git rebase -i'

alias del="trash-put"       # del / trash are shorter than rmtrash
## omz tmux alias
alias t='tmux attach || tmux new-session\; split-window -h'
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias ts='tmux new-session -s'
alias tl='tmux list-sessions'
alias tksv='tmux kill-server'
alias tkss='tmux kill-session -t'

# Others commands shortcuts
alias k9='kill -9'
alias ports="lsof -ni | grep LISTEN"

