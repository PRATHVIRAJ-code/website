FROM ubuntu
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name PRATHVI_DOCKER 
