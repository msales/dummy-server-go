build:
	docker build -f .docker/app/Dockerfile -t dummy-server .

.PHONY: build