FROM  centos:latest
RUN yum install -y httpd \
  zip\
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page296/oxer.zip /var/www/html
WORKDIR /var/www/html
RUN unzip oxer.zip
RUN cp -rvf oxer/*
RUN rm -rf oxer oxer.zip
CMD ["/usr/sbin/httpd", "D", "FOREGROUND"]
EXPOSE 80 22