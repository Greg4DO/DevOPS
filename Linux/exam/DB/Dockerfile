# This is a comment
FROM ubuntu:14.04
MAINTAINER Sergii Rolskyi <s.rolskii@gmail.com>
RUN apt-get update && apt-get install -y mysql-server
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
ADD ./startup.sh /opt/startup.sh
EXPOSE 3306

CMD ["/bin/bash", "/opt/startup.sh"]
