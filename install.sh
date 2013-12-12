#!/bin/bash

NVM_DIR="/usr/local/nvm"

if ! hash git 2>/dev/null; then
  echo >&2 "You need to install git - visit http://git-scm.com/downloads"
  echo >&2 "or, use install-gitless.sh instead."
  exit 1
fi

if [ -d "$NVM_DIR" ]; then
  echo "=> NVM is already installed in $NVM_DIR, trying to update"
  echo -ne "\r=> "
  cd $NVM_DIR && git pull
else
  # Cloning to $NVM_DIR
  git clone https://github.com/xtuple/nvm.git $NVM_DIR  
  ln -s /usr/local/nvm/nvm_bin.sh /usr/local/bin/nvm
fi

echo "NVM installed"
