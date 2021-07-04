CC=gcc
CXX=g++

PIPENV_VENV_IN_PROJECT=1

PYENV_ROOT="$HOME/.pyenv"
NODENV_ROOT="$HOME/.nodenv"
RBENV_ROOT="$HOME/.rbenv"

PATH="$HOME/.local/bin:$PATH"
PATH="/usr/local/go/bin:$PATH"
PATH="$HOME/go/bin:$PATH"
PATH="$PYENV_ROOT/bin:$PATH"
PATH="$NODENV_ROOT/bin:$PATH"
PATH="$RBENV_ROOT/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"

export CC
export CXX
export PIPENV_VENV_IN_PROJECT
export PYRNV_ROOT
export NODENV_ROOT
export RBENV_ROOT
export PATH

