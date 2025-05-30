FROM n8nio/n8n:1.94.1
USER root
# Depoları sabitle
RUN echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/main" > /etc/apk/repositories && \
    echo "https://dl-cdn.alpinelinux.org/alpine/v3.21/community" >> /etc/apk/repositories
# Cache’siz güncelleme ve yükleme
RUN apk update && apk add --no-cache ffmpeg curl bash && apk upgrade
# Cache temizle
RUN rm -rf /var/cache/apk/*
# Bash doğrula
RUN bash --version
# Test dizini
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test && chown node:node /tmp/n8n/test
USER node
CMD ["n8n"]
