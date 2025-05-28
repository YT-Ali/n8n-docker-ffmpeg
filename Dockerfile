FROM docker.n8n.io/n8nio/n8n:1.94.1
USER root
# Alpine depolarını sabitle
RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/main" > /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/community" >> /etc/apk/repositories
# Depoları güncelle ve paketleri yükle
RUN apk update && apk add --no-cache ffmpeg curl bash
# Bash’in yüklendiğini doğrula
RUN bash --version
# Test dizinini oluştur
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test && chown node:node /tmp/n8n/test
USER node
CMD ["n8n"]
