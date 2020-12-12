# Global copy to clipboard
[[ "$0" =~ 'zsh' ]] && alias -g CC='| xclip -selection clipboard'

# Copy SSH public key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | xclip | echo '=> Public key copied to pasteboard'"

# Copy working directory to clipboard
alias pwdc=' pwd | tr -d "\n" | xclip -selection clipboard'

# Open file
alias o='xdg-open 2>/dev/null'

# Record x11
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" ## then pass a filename

# System commands
alias apt-installed="aptitude search '~i!~M'"
if [[ $UID != 0 || $EUID != 0 ]]; then
    alias halt='sudo shutdown -h now'
    alias reboot='sudo shutdown -r now'
    alias apt='sudo apt-get'
    alias agi='sudo apt-get install'
    alias agr='sudo apt-get remove'
    alias agu='sudo apt-get update'
    alias agg='sudo apt-get upgrade'
    alias ags='sudo apt-cache search'
    alias agall='sudo apt-get update && sudo apt-get -y upgrade && sudo apt-get -y dist-upgrade && sudo apt-get -y autoremove'
else
    alias halt='shutdown -h now'
    alias reboot='shutdown -r now'
    alias apt='apt-get'
    alias agi='apt-get install'
    alias agr='apt-get remove'
    alias agu='apt-get update'
    alias agg='apt-get upgrade'
    alias ags='apt-cache search'
    alias agall='apt-get update && apt-get -y upgrade && apt-get -y dist-upgrade && apt-get -y autoremove'
fi
alias iotop='iotop -Poa' ## iotop with only processes using i/o + accumulated i/o
alias dmesg="dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'" ## dmesg with colored human-readable dates

# Disk usage
alias df='df -h | grep -v tmpfs | grep -v "/docker/"'
# Datetime helpers
alias cal='cal -3'
alias svim="sudo vim"
alias vim="sudo vim"
alias gmaven="cd /usr/local/lib/maven-3.6.3"
alias grocket="cd /usr/local/lib/rocketmq-4.7"
alias gkafka="cd /usr/local/lib/kafka_2.13-2.6.0"
alias gactivemq="cd /usr/local/lib/apache-activemq-5.5.0"
alias gnginx="cd /usr/local/lib/nginx-1.18.0"
alias gzk="cd /usr/local/lib/apache-zookeeper-3.6.2"
