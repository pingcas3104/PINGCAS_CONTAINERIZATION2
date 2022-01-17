FROM ubuntu

MAINTAINER pingcas

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update; apt dist-upgrade -y

RUN apt pip install numpy

RUN apt install -y apache2 mysql-server php

ENTRYPOINT apachectl -D FOREGROUND

ENTRYPOINT phpctl -D FORGROUND
