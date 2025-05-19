FROM n8nio/n8n:1.86.1
USER root
RUN apk add --no-cache ffmpeg curl
LABEL org.opencontainers.image.source=https://github.com/yt-ali/n8n-docker-ffmpeg
USER node
