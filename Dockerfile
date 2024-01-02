# Use the official NGINX base image
FROM nginx:latest

RUN yum install nginx -y | service nginx start

WORKDIR /usr/share/html

# Expose the container's port 80
EXPOSE 80

# Start NGINX service within the container
CMD ["nginx", "-g", "daemon off;"]

