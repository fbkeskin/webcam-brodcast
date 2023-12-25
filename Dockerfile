# Use the official Nginx base image
FROM nginx:latest

# Install OpenSSL during the image build
RUN apt-get update -y && apt-get install -y openssl

# Generate a self-signed SSL certificate for the domain
RUN openssl req -x509 -newkey rsa:4096 -subj /C=TR -nodes -keyout /etc/ssl/makbulut.42.fr.key -out /etc/ssl/makbulut.42.fr.crt

# Remove the default Nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the custom index.html and script.js to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Copy the custom nginx.conf to the Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 to allow external access
EXPOSE 80

# Command to run Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]

