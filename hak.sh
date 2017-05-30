#!/bin/bash
#
# Please see LICENSE for details.

function usage() {
  echo "hak: A simple hackathon project starter"
  echo
  echo "Usage: hak install|on|off|up|uninstall"
  echo "Usage: hak clone jaequery/honeybadger.git project-name"
  echo
  echo "hak install   - Install docker, docker-compose, docker-machine on the machine"
  echo "hak on|off    - Turn on|off the docker service"
  echo "hak clone     - Clone a github project (eg. honeybadger) and update the VIRTUAL_ENV variable in docker-compose.yml"
  echo "hak up        - Issue docker-compose up -d"
  echo "hak uninstall - Uninstall hak from the machine"
  echo
  exit
}

COMMANDS="install on off clone up uninstall -h --help"

if [[ $COMMANDS =~ (^|[[:space:]])$1($|[[:space:]]) ]]; then
  CMD=$1
  shift
  if [[ "${CMD}" == "-h" || "${CMD}" == "--help" ]]; then
    usage
  fi
  hak-${CMD} "$@"
else
  usage
fi

