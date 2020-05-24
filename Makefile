SHELL := /bin/bash

up:
	docker-compose up --build

dw:
	docker-compose down

dwv: 
	docker-compose down -v

mig:
	docker-compose exec web python manage.py migrate --noinput

ter:
	docker exec -ti api-drf_web_1 /bin/sh

lint:
	docker-compose run web sh -c "flake8"