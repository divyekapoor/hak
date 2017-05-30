#!/bin/bash
#
# Please see LICENSE file for details.
#


if [[ -n "$(type docker)" ]]; then
  echo "Docker detected on the machine. Please uninstall before proceeding."
  exit 1
fi

if [[ "$(hak-env)" == "Linux" ]]; then
  sudo apt-get install -y docker docker-machine docker-compose
  RUBY_VERSION=$(ruby -v | awk '{ print $2 }')
  if [[ "${RUBY_VERSION}" < "2.1.0p000" ]]; then
    echo "Ruby Version ${RUBY_VERSION} is lower than expected for dory. Please update Ruby."
    exit 1
  fi
  sudo gem install dory
else
  brew install docker docker-machine
  brew tap codekitchen/dinghy
  brew install dinghy
fi

