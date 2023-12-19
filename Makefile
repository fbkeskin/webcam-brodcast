DOCKER=sudo docker

all:
	$(DOCKER)-compose up --build -d

rm:
	$(DOCKER)-compose down --rmi all --volumes

re-all: rm all

