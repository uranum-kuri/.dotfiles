if [ -z "${DOT_PATH}" ]; then
  echo $(tput setaf 1)install failed.$(tput sgr0)
  echo $(tput setaf 1)set DOT_PATH environment variable.$(tput sgr0)
  exit 1
fi

source $DOT_PATH/config/.profile

echo "install apt packages"
sudo apt update
sudo apt upgrade -y
sudo apt install curl wget gcc g++ cmake make openssl libssl-dev libbz2-dev libreadline-dev libsqlite3-dev libffi-dev zlib1g-dev -y
sudo apt install fish tmux neovim fzf clang clang-format clang-tidy gdb ccache ninja-build pkg-config -y

echo "install rust lang"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

echo "install rust tools"
cargo install exa
cargo install bat
cargo install hexyl
cargo install bottom
cargo install gping
cargo install ripgrep
cargo install fd-find
cargo install starship
cargo install procs
cargo install pueue
cargo install broot

echo "install pyenv"
git clone https://github.com/pyenv/pyenv $PYENV_ROOT
git clone https://github.com/pyenv/pyenv-update $PYENV_ROOT/plugins/pyenv-update
git clone https://github.com/massongit/pyenv-pip-update $PYENV_ROOT/plugins/pyenv-pip-update
git clone https://github.com/pyenv/pyenv-ccache $PYENV_ROOT/plugins/pyenv-ccache
eval "$(pyenv init --path)"

echo "install python2"
pyenv install 2.7.18
pyenv global 2.7.18

echo "install python2 packages"
python -m pip install --upgrade pip
python -m pip install --upgrade setuptools
python -m pip install --upgrade virtualenv

echo "install python3"
pyenv install 3.7.3
pyenv global 3.7.3

echo "install python3 packages"
python -m pip install --upgrade pip
python -m pip install --upgrade setuptools
python -m pip install --upgrade virtualenv
python -m pip install --upgrade pipenv

echo "install goenv"
git clone https://github.com/syndbg/goenv $GOENV_ROOT
git clone https://github.com/jcmuller/goenv-update $GOENV_ROOT/plugins/goenv-update
eval "$(goenv init -)"

echo "install go lang"
goenv install 1.16.5
goenv global 1.16.5

echo "install go tools"
go install github.com/x-motemen/ghq@latest
go get github.com/jesseduffield/lazygit@latest

echo "install nodenv"
git clone https://github.com/nodenv/nodenv $NODENV_ROOT
git clone https://github.com/nodenv/node-build $NODENV_ROOT/plugins/node-build
git clone https://github.com/nodenv/nodenv-update $NODENV_ROOT/plugins/nodenv-update
eval "$(nodenv init -)"

echo "install nodejs"
nodenv install 14.17.2
nodenv global 14.17.2

echo "install rbenv"
git clone https://github.com/rbenv/rbenv $RBENV_ROOT
git clone https://github.com/sstephenson/ruby-build $RBENV_ROOT/plugins/ruby-build
git clone https://github.com/rkh/rbenv-update $RBENV_ROOT/plugins/rbenv-update
eval "$(rbenv init - bash)"

echo "install ruby"
rbenv install 3.0.1
rbenv global 3.0.1

echo $(tput setaf 2)install complete! $(tput sgr0)

