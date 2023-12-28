#!/bin/sh

echo "DS RECORDS ARE IN dsset-natechoe.dev"

CURR_PATH="$(dirname "$0")"

"${CURR_PATH}"/regen-ksk.sh
"${CURR_PATH}"/regen-zsk.sh
"${CURR_PATH}"/signzone.sh
