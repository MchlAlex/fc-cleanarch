FROM golang:bookworm

WORKDIR /app
COPY . .
RUN go mod tidy

CMD ["go", "run", "cmd/ordersystem/main.go", "cmd/ordersystem/wire_gen.go"]
