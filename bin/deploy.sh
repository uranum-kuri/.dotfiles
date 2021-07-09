if [ -z "${DOT_PATH}" ]; then
  echo $(tput setaf 1)deploy dotfiles failed.$(tput sgr0)
  echo $(tput setaf 1)set DOT_PATH environment variable.$(tput sgr0)
  exit 1
fi

DOT_BACKUP=${DOT_PATH}/backup

cd ${DOT_PATH}/config

for f in .??* ; do
    if [ -L ${HOME}/${f} ] ; then
        continue
    elif [ -f ${HOME}/${f} ] ; then
        mkdir -p ${DOT_BACKUP}
        mv ${HOME}/${f} ${DOT_BACKUP}/.
    elif [ -d ${HOME}/${f} ] ; then
        mkdir -p ${DOT_BACKUP}/${f}
        mv ${HOME}/${f} ${DOT_BACKUP}/${f}
    fi
    ln -snfv ${DOT_PATH}/config/${f} ${HOME}/${f}
done

echo $(tput setaf 2)deploy dotfiles complete! $(tput sgr0)

