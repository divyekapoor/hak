#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e

if [[ "$(hak-env)" == "Linux" ]]; then
  sudo service docker stop
else
  docker-machine kill default || true
  docker-machine rm default
fi

