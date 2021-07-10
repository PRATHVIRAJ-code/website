FROM ubuntu
RUN apt-get update
RUN sudo -y install httpd
ADD . /var/www/html
ENTRYPOINT /usr/sbin/httpd -D FOREGROUND
ENV name PRATHVI_DOCKER 
