FROM centos:7

RUN yum install php lipapache2-mod-php -y RUN yum install httpd -y

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]

WORKDIR /var/www/html

COPY index.php .
