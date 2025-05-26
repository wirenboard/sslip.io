FROM alpine:latest

WORKDIR /app

COPY . /app

RUN apk add go

RUN go mod tidy

ENTRYPOINT ["go", "run", "main.go"]
