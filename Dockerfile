
FROM nginx:alpine

MAINTAINER OM <omghorpade212000@gmail.com>


# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*


# Copy your static site files to nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
