#!/bin/bash
#
# Please see the LICENSE file for details.
#

set -e

hak install || echo "Skipping install step."
hak off
hak on
hak clone jaequery/honeybadger test-project
cd test-project
hak up
