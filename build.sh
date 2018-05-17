#!/usr/bin/env bash
docker build -t rmq-w .
docker run -v /etc/hostname:/srv/hostname -v /tmp:/tmp rmq-w:latest bash
