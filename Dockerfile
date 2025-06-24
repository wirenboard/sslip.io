FROM alpine:3.22.0

WORKDIR /app
COPY . /src

RUN apk add go &&\
    cd /src &&\
    go build -o /app/sslip

ENTRYPOINT ["/app/sslip"]