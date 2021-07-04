if [ -z "${DOT_PATH}" ]; then
  echo $(tput setaf 1)Deploy dotfiles failed.$(tput sgr0)
  echo $(tput setaf 1)set DOT_PATH environment variable.$(tput sgr0)
  exit 1
fi

cd ${DOT_PATH}/config

for f in .??*
do
    [[ ${f} = ".git" ]] && continue
    [[ ${f} = ".gitignore" ]] && continue
    ln -snfv ${DOT_PATH}/config/${f} ${HOME}/${f}
done

echo $(tput setaf 2)Deploy dotfiles complete!$(tput sgr0)

