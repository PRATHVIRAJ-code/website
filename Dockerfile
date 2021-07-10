FROM ubuntu
RUN apt-get update
RUN systemctl status apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
ENV name PRATHVI_DOCKER 
