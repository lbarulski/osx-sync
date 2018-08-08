FROM alpine:3.8
RUN apk add --no-cache bash inotify-tools unison shadow

ADD entrypoint /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint

ENTRYPOINT ["/usr/local/bin/entrypoint"]
