#!/bin/sh

export ALGO="$(cat config/algorithm)"
export BITS="$(cat config/bits)"
export HOST="$(cat config/hostname)"

export OLD_PATH="$(cat ksk.path)"

rm "dsset-$HOST."
rm "$OLD_PATH"*

dnssec-keygen -f KSK -a "$ALGO" -b "$BITS" -n ZONE "$HOST" > ksk.path
