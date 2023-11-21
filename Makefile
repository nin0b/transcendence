NAME			:=	transcendence

SRCS_DIR		:=	.

COMPOSE_FILE	:=	${SRCS_DIR}/docker-compose.yml

FLAGS			:=	-f ${COMPOSE_FILE} \
					-p ${NAME}

all: build

build:
	mkdir -p ${SRCS_DIR}/docker-web/data
	cp ~/Documents/.env.transcendence ${SRCS_DIR}/.env
	docker compose ${FLAGS} up -d --build

start:
	docker compose ${FLAGS} start

stop:
	docker compose ${FLAGS} stop

clean:
	rm -rf ${SOURCE_DIR}/ddocker-web/data

fclean: stop clean
	docker system prune -f
	docker rmi $$(docker images -q)
	docker volume rm $$(docker volume ls -q)

re: fclean all

.PHONY: all build start stop fclean clean re
