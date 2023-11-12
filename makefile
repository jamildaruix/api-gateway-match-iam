start:
	docker compose up

start-d:
	docker compose up -d

stop:
	docker compose down
	docker rmi api-gateway-match-iam-kong:latest

restart: stop start

.PHONY: start stop restart