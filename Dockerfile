FROM n8n/n8n:1.94.0
USER root
RUN apk add --no-cache ffmpeg curl
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test
USER node
