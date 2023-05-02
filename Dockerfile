# Use an official Nginx image as the base image
FROM nginx:stable-alpine

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d

# Copy the static website files to the Nginx web root directory
COPY . /usr/share/nginx/html
