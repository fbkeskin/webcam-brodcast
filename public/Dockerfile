# İlk olarak bir nginx image'ı alıyoruz
FROM nginx

# Work directory'yi /usr/share/nginx/html yaparak, default olarak nginx, bu klasörden HTML dosyalarını servis eder
WORKDIR /usr/share/nginx/html

RUN apt-get update -y

RUN apt-get upgrade -y

RUN apt-get install -y dumb-init

RUN apt-get install -y openssl nginx

RUN apt-get clean -y

#COPY nginx.conf /etc/nginx/nginx.conf

# Generate SSL certificate
RUN openssl req -x509 -newkey rsa:4096 -subj /C=TR -nodes -keyout /etc/ssl/makbulut.42.fr.key -out /etc/ssl/makbulut.42.fr.crt

# Local'daki index.html dosyasını container içine kopyalıyoruz
COPY index.html . 

# Container 80. portu dinlesin
EXPOSE 80

