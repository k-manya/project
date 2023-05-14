FROM centos:latest
MAINTAINER manyakashyap97@gmail.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/fregg.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip fregg.zip
RUN cp -rvf fregg/* .
RUN rm -rf fregg fregg.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80