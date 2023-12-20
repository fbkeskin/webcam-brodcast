FROM nginx

RUN apt-get update -y && apt-get install -y openssl

RUN openssl req -x509 -newkey rsa:4096 -subj /C=TR -nodes -keyout /etc/ssl/makbulut.42.fr.key -out /etc/ssl/makbulut.42.fr.crt

COPY nginx.conf /etc/nginx/nginx.conf

WORKDIR /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

