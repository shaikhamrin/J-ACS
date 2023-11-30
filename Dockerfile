FROM ubuntu
RUN apt update
RUN apt install apache2 -y
RUN service apache2 start
ENTRYPOINT apachectl -D FOREGROUND
copy index.html /var/www/html

