CC=gcc
CXX=g++

PIPENV_VENV_IN_PROJECT=1

PYENV_ROOT="$HOME/.pyenv"
NODENV_ROOT="$HOME/.nodenv"
RBENV_ROOT="$HOME/.rbenv"
GOENV_ROOT="$HOME/.goenv"

PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/.cargo/bin:$PATH"
PATH="$PYENV_ROOT/bin:$PATH"
PATH="$NODENV_ROOT/bin:$PATH"
PATH="$RBENV_ROOT/bin:$PATH"
PATH="$GOENV_ROOT/bin:$PATH"

export CC
export CXX
export PIPENV_VENV_IN_PROJECT
export PYRNV_ROOT
export NODENV_ROOT
export RBENV_ROOT
export PATH

