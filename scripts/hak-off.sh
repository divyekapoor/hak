#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e

if [[ "$(hak-env)" == "Linux" ]]; then
  sudo service docker stop
else
  echo Unimplemented: hak off on Mac.
fi

