cd ${DOT_PATH}/config

for f in .??*
do
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv ${DOT_PATH}/config/${f} ${HOME}/${f}
done

echo $(tput setaf 2)Deploy dotfiles complete!$(tput sgr0)

