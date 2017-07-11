COMPOSE = docker-compose
RUN = $(COMPOSE) run --rm api

build:
	$(COMPOSE) build

up:
	$(COMPOSE) up -d

restart:
	$(COMPOSE) restart

stop:
	$(COMPOSE) stop

migrate:
	$(RUN) python manage.py migrate

migrations:
	$(RUN) python manage.py makemigrations

shell:
	$(RUN) python manage.py shell

sh:
	$(RUN) sh
