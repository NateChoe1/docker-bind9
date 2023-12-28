#!/bin/bash

OLD_DIR=$(pwd)
cd $(dirname $0)
cat ../db.natechoe.dev | \
	sed "s/__SERIAL_NO__/$(date +%s)/g" | \
	sed "s/__KSK_FILE__/$(cat ksk.path).key/g" | \
	sed "s/__ZSK_FILE__/$(cat zsk.path).key/g" \
	> ../db.natechoe.dev.tmp
dnssec-signzone -o natechoe.dev -t ../db.natechoe.dev.tmp
docker compose down
docker compose up -d
cd $OLD_DIR
