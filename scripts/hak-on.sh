#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e

if [[ "$(hak-env)" == "Linux" ]]; then
  sudo service docker start
else
  docker-machine create -d virtualbox default || docker-machine start default
fi

