# Use the alpine linux image
FROM alpine:latest

# Update packages
RUN apk update 

#Install nginx
RUN apk add nginx

#Install git
RUN apk add git

# Copy nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Set the working directory
WORKDIR /usr/share/nginx/html

# Clone the repository
RUN git clone https://github.com/veekrum/task

# Expose port 9000
EXPOSE 9000
EXPOSE 80

#Start nginx 
CMD ["nginx", "-g", "daemon off;"]
