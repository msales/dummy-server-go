# Build container
FROM golang:1.10-alpine as builder

WORKDIR /go/src/dummy-server
COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -ldflags '-s' -o dummy-server .

# Run container
FROM scratch

COPY --from=builder /go/src/dummy-server/dummy-server .

CMD ["./dummy-server"]