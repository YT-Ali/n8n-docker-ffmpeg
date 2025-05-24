FROM docker.n8n.io/n8nio/n8n:1.93.0

USER root

RUN apk add --no-cache ffmpeg curl bash

RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test && chown node:node /tmp/n8n/test

USER node
