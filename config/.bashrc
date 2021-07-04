export PS1="\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;34m\]\w\[\e[0m\] \$ "

source ~/.bash_aliases

eval "$(pyenv init --path)"

eval "$(nodenv init -)"

eval "$(rbenv init - bash)"

eval "$(gh completion -s bash)"

export HISTSIZE=10000
export HISTFILE="$HOME/.bash_history"
export HISTCONTROL="ignoreboth"
export HISTTIMEFORMAT="%F %T "

