
# Dockerfile

# Use the official Nginx base image
FROM nginx:latest

RUN apt-get update -y && apt-get install -y openssl

RUN openssl req -x509 -newkey rsa:4096 -subj /C=TR -nodes -keyout /etc/ssl/makbulut.42.fr.key -out /etc/ssl/makbulut.42.fr.crt

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom index.html to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/

# Copy the custom nginx.conf to the Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Command to run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]

