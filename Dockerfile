FROM ubuntu:18.04
RUN apt update && \
    apt install iputils-ping iproute2
RUN apt install -y nginx
COPY index.html /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
