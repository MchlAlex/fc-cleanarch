FROM golang:bookworm

WORKDIR /app
COPY . .
RUN go mod tidy
COPY cmd/ordersystem/.env .env
CMD ["go", "run", "cmd/ordersystem/main.go", "cmd/ordersystem/wire_gen.go"]
