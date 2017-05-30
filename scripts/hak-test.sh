#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e
set -x

hak install || echo "Skipping install step."
hak off
hak on
hak clone jaequery/honeybadger test-project
cd test-project
hak up

rm -rf test-project