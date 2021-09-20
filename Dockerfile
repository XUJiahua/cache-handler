FROM caddy:2.4.5-builder-alpine
WORKDIR /usr/bin
RUN xcaddy build v2.4.5 --with github.com/xujiahua/cache-handler@df3bbff94af8e3f808f4643fc856fb96f19b72f1

FROM caddy:2.4.5-alpine
WORKDIR /root/
COPY --from=0 /usr/bin/caddy /usr/bin/caddy
