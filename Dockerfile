FROM docker.n8n.io/n8nio/n8n:1.94.1
USER root
# Depoları tazelemek için apk update ve gerekli paketleri yükle
RUN apk update && apk add --no-cache ffmpeg curl bash
# Test dizinini oluştur
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test && chown node:node /tmp/n8n/test
USER node
CMD ["n8n"]
