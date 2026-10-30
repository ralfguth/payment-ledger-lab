# Works with both the Compose plugin (`docker compose`) and the standalone binary.
COMPOSE := $(shell docker compose version >/dev/null 2>&1 && echo "docker compose" || echo "docker-compose")

.PHONY: build test lint db-up db-down

build:
	go build -o bin/ ./...

test:
	go test -race ./...

lint:
	go vet ./...
	go tool staticcheck ./...

db-up:
	$(COMPOSE) up -d --wait postgres

db-down:
	$(COMPOSE) down
