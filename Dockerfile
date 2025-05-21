# Use official NGINX image as base
FROM nginx:alpine

# Copy index.html to the NGINX web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

