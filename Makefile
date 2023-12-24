
DOCKER=sudo docker
CONTAINER_COUNT := $(shell $(DOCKER)-compose ps -q | wc -l)

all:
ifeq ($(CONTAINER_COUNT), 0)
	$(DOCKER)-compose up --build -d
else
	@echo "Containers are already running."
endif
	nohup /opt/homebrew/bin/python3 websocket_server.py &

rm:
	$(DOCKER)-compose down --rmi all --volumes
	pkill -f websocket_server.py

re-all: rm all

