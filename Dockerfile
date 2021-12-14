FROM centos
WORKDIR /var/www/html
COPY ./index.html ./
RUN yum -y install httpd
COPY . .
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ] 
EXPOSE 80