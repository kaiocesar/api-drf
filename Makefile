SHELL := /bin/bash

up:
	docker-compose up --build

dw:
	docker-compose down -v

mig:
	docker-compose exec web python manage.py migrate --noinput

ter:
	docker exec -it bankmob_web_1 /bin/sh