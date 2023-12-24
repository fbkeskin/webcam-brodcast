

DOCKER=sudo docker
CONTAINER_COUNT := $(shell $(DOCKER)-compose ps -q | wc -l  | tr -d ' ')

# ANSI Renk Kodları
RED := \033[0;31m
GREEN := \033[0;32m
NC := \033[0m

# Unicode Simgeleri
GARBAGE_ICON := 🗑️
OK_ICON := ✔️

all:
ifeq ($(CONTAINER_COUNT), 0)
	@echo "$(GREEN)No containers found. Starting containers...$(NC)"
	@$(DOCKER)-compose up --build -d
	@echo "$(OK_ICON) Containers are up and running.$(NC)"
else
	@echo "$(OK_ICON) Containers are already running.$(NC)"
endif
	@echo "$(GREEN)Starting WebSocket server...$(NC)"
	@nohup /opt/homebrew/bin/python3 websocket_server.py &
	@echo "$(OK_ICON) WebSocket server is running.$(NC)"

rm:
	@echo "$(RED)$(GARBAGE_ICON) Stopping and removing containers...$(NC)"
	@$(DOCKER)-compose down --rmi all --volumes
	@/bin/bash -c '/usr/bin/pkill -f websocket_server.py; exit 0'
	@echo "$(OK_ICON) Containers and volumes removed. WebSocket server stopped.$(NC)"

re-all: rm all
	@echo "$(GREEN)$(OK_ICON) Restarting all...$(NC)"

