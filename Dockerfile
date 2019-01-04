# shadowsocks-libev with kcp

FROM alpine:latest

ENV PORT       10800
ENV PASSWORD   123456
ENV METHOD     chacha20
ENV TIMEOUT    600
ENV SERVER     0.0.0.0

EXPOSE $PORT/tcp $PORT/udp

COPY entrypoint /bin/entrypoint
COPY ssserver   /usr/local/bin/ssserver
RUN chmod +x /bin/entrypoint
RUN chmod +x /usr/local/bin/ssserver
ENTRYPOINT ["entrypoint"]
