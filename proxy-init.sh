#!/bin/sh

NAMED_CONF="$(cat /etc/bind/named.conf)"

cat /etc/bind/named.conf.basic | sed "s/@1@/$(getent hosts bind-choedev | awk '{print $1}')/g" > /etc/bind/named.conf

named -f -L/dev/stdout
