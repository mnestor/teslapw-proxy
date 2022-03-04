FROM golang:1.18rc1-alpine3.14

EXPOSE 80/tcp

COPY root/ /root

RUN go install github.com/mgb/tesla-powerwall-local/cmd/tesla-powerwall-proxy@latest

ENTRYPOINT ["/root/docker-entrypoint.sh"]