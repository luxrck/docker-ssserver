# shadowsocks-libev with kcp

FROM busybox

COPY ssserver   /bin/ssserver
RUN chmod +x /bin/ssserver
ENTRYPOINT ["/bin/ssserver"]
