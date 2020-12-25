# Global copy to clipboard
[[ "$0" =~ 'zsh' ]] && alias -g CC='| xclip -selection clipboard'

# Copy SSH public key to clipboard
alias pubkey="more ~/.ssh/id_rsa.pub | xclip | echo '=> Public key copied to pasteboard'"
# Copy working directory to clipboard
alias pwdc=' pwd | tr -d "\n" | xclip -selection clipboard'
## alias update
alias updateAll='yum update ; yum upgrade '

alias iotop='iotop -Poa' ## iotop with only processes using i/o + accumulated i/o
##开机信息
alias dmesg="dmesg -T|sed -e 's|\(^.*'`date +%Y`']\)\(.*\)|\x1b[0;34m\1\x1b[0m - \2|g'" ## dmesg with colored human-readable dates
alias ps='ps auxf'


# Disk usage
alias df='df -h | grep -v tmpfs | grep -v "/docker/"'
alias du='gdu -h'
alias du0='gdu -hd0'
alias du1='gdu -hd1 | sort -k2' ## sort by name
alias du1s='gdu -hd1 | sort -h' ## sort by size

# Datetime helpers
alias rmrf="rm -rf"


alias gmaven="cd /usr/local/lib/maven-3.6.3"
alias grocket="cd /usr/local/lib/rocketmq-4.7"
alias gkafka="cd /usr/local/lib/kafka_2.13-2.6.0"
alias gactivemq="cd /usr/local/lib/apache-activemq-5.5.0"
alias gnginx="cd /usr/local/lib/nginx-1.18.0"
alias gzk="cd /usr/local/lib/apache-zookeeper-3.6.2-bin"