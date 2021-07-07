set -x CC gcc
set -x CXX g++

set -x PIPENV_VENV_IN_PROJECT 1

set -x PATH  $HOME/.local/bin $PATH

set -x PATH  $HOME/.cargo/bin $PATH

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH  $PYENV_ROOT/bin $PATH
pyenv init --path | source
pyenv init - | source

set -x NODENV_ROOT $HOME/.nodenv
set -x PATH  $NODENV_ROOT/bin $PATH
nodenv init - | source

set -x RBENV_ROOT $HOME/.rbenv
set -x PATH  $RBENV_ROOT/bin $PATH
rbenv init - | source

set -x GOENV_ROOT $HOME/.goenv
set -x PATH  $GOENV_ROOT/bin $PATH
goenv init - | source
set -x PATH $GOPATH/bin $PATH

starship init fish | source

alias c "clear"
alias v "nvim"
alias ed "ed -lp '>'"
alias .. "cd .."
alias top "btm"
alias grep "rg"
alias find "fd"
alias ps "procs"

alias ls "exa --icons"
alias la "exa -a --icons"
alias ll "exa -ahl --icons --git"
alias tree "exa -Thl --icons --git"

alias g "git"
alias ga "git add"
alias gc "git commit"
alias gcm "git commit -m"
alias gs "git status -sb"
alias gd "git diff"
alias gb "git branch -a"
alias gp "git push"
alias gch "git checkout"
alias gw "git worktree"
alias gl "git log --graph --oneline"
alias glog "git log --graph -n 10"
alias gsub "git submodule"
alias lg "lazygit"
alias gg "ghq get -p"

