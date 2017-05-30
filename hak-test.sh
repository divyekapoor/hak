#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e

if [[ "$(hak-env)" == "Linux" ]]; then
  sudo service docker start
  SYSTEMD_PAGER='' sudo -E service docker status
else
  echo Unimplemented: hak on on Mac.
fi

