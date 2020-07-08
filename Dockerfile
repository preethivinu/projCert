FROM php:7.3-apache
RUN apt-get update -y
RUN service apache2 restart
ADD . /var/www/html
EXPOSE 80
CMD ['/usr/sbin/apache2ctl', '-D', 'FOREGROUND']
