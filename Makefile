ci:
	docker-compose -f docker-compose.test.yml up --abort-on-container-exit --exit-code-from app 

build:
	docker-compose -f docker-compose.yml build app

push:
	docker-compose -f docker-compose.yml push app

start:
	docker-compose up
