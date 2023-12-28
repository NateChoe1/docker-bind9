#!/bin/sh

export ALGO="$(cat config/algorithm)"
export BITS="$(cat config/bits)     "
export HOST="$(cat config/hostname) "

export OLD_PATH="$(cat zsk.path)"

rm "$OLD_PATH"*

dnssec-keygen -a $ALGO -b $BITS -n ZONE $HOST > zsk.path
