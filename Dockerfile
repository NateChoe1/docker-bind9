FROM debian:stable

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y bind9

COPY ./init.sh /init.sh

ENTRYPOINT /init.sh
