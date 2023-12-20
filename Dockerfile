# Set the base image to the official Nginx image
FROM nginx

# Copy the HTML file to the default Nginx root directory
COPY index.html /usr/share/nginx/html/

# Copy the Nginx configuration file to the default Nginx configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
