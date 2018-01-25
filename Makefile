.PHONY: *

all: init 

build-base:
	docker build -t build-env -f Dockerfile.build .

init:
	chown -R www-data:www-data /project	
up: 
	docker-compose -f /project/docker-compose.yml up -d

down:
	docker-compose -f /project/docker-compose.yml down
