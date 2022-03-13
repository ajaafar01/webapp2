FROM ubuntu
MAINTAINER aja (abderrahmane.jaafar@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/eazytrainingfr/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g","daemon off;"]

