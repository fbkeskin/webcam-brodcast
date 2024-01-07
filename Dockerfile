# Use the official Nginx base image
FROM nginx:latest

# ARG komutu ile Dockerfile içinde kullanılacak değişkenleri belirtin
ARG WEBSOCK_PORT
ARG IP

# Install OpenSSL during the image build
RUN apt-get update -y && apt-get install -y openssl

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom index.html and script.js to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/script.template

# Copy the custom nginx.conf to the Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.template

RUN envsubst < /usr/share/nginx/html/script.template > /usr/share/nginx/html/script.js; rm -rf /usr/share/nginx/html/script.template 
RUN envsubst < /etc/nginx/nginx.template > /etc/nginx/nginx.conf && rm -rf /etc/nginx/nginx.template

# Expose port 80 to allow external access
EXPOSE 80

# Command to run Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]

