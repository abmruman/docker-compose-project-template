targets: init build

init: env.example
	./scripts/init.sh

build: .env
	./scripts/build.sh

up: .env
	./scripts/up.sh

down: .env
	./scripts/down.sh

clean: .env
	./scripts/cleanup.sh
