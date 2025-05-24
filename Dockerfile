FROM docker.n8n.io/n8nio/n8n:1.93.0

USER root

# ffmpeg, curl ve bash paketlerini aynı anda kuruyoruz. Bu, build sürecini hızlandırır ve katman sayısını azaltır.
RUN apk add --no-cache ffmpeg curl bash

# /tmp/n8n/test klasörünü oluşturup izinlerini ayarlıyoruz.
RUN mkdir -p /tmp/n8n/test && chmod 777 /tmp/n8n/test && chown node:node /tmp/n8n/test

# Kullanıcıyı tekrar 'node' yapıyoruz, böylece n8n uygulaması doğru kullanıcıyla çalışır.
USER node
