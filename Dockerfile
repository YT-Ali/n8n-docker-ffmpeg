FROM ghcr.io/yt-ali/n8n-docker-ffmpeg:latest
USER root
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test
RUN apk add --no-cache curl
USER node
