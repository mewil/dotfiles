alias tor='nohup /usr/local/bin/tor &'
unalias gc
function gc() {
    git clone ${1} && cd $(echo ${1} | sed 's:.*/::')
}
alias gs='git status'
alias ga='git add . && gs'
alias gpl='git pull'
alias gf='git fetch'
alias gph='git push'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gll='git log --graph'
alias gsh='git show --color'
alias grb='git rebase'
alias gb='git branch'
alias gnb='git checkout -b'
alias gch='git checkout'
alias gd='git diff'
unalias gcm
function gcm() {
    git commit -m "${1}"
}
unalias md
function md() {
    mkdir ${1} && cd ${1}
}
alias t="tree -I '.git' -L 2 -Ca -I 'node_modules' -I '.git'"
alias vd='cd ..'
alias c='clear'
alias d='docker'
alias dc='docker-compose'
alias tm='tmux'
alias rd='rm -rf'
alias dl='cd ~/Downloads/'
alias dot='cd ~/.dotfiles/'
alias myip='curl ip-api.com'
function message() {
    osascript -e 'tell application "Messages" to send "'${2}'" to buddy "'${1}'"'
}
function matrix() {
printf "\e[32m\n"
while :
do
    for i in {1..55}
    do
        ((r = $RANDOM % 2))
        if (($RANDOM % 5 == 1))
        then
            if (($RANDOM % 4 == 1))
            then
                v+="\e[1m $r   "
            else
                v+="\e[2m $r   "
            fi
        else
            v+="     "
        fi
    done
    printf "$v\n"
    v=""
done
}
