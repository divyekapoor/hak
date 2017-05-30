#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e
set -x

CWD=$(pwd)

rm -rf test-project
hak install || echo "Skipping install step."
hak off
hak on
hak clone jaequery/honeybadger test-project
cd test-project
hak up
hak off

cd ${CWD}
rm -rf test-project
