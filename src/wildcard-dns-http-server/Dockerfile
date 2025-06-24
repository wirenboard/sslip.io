FROM alpine:3.22.0

WORKDIR /app
COPY . /src

RUN apk add go &&\
    cd /src &&\
    go build -o /app/wildcard-dns-http-server

ENTRYPOINT ["/app/wildcard-dns-http-server"]