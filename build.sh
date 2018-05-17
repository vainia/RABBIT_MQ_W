#!/usr/bin/env bash
docker build -t rmq-w .
docker run -d rmq-w:latest
