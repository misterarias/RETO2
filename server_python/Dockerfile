FROM alpine:latest
MAINTAINER German Blanco

RUN apk add --update python musl-dev python-dev gcc mysql-client mariadb-dev py-pip && \
    pip install MySQL-python

RUN echo "@testing http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update && apk --update add dstat@testing

ADD files/dummy-web-server.py /root/dummy-web-server.py
ADD files/start.sh /root/start.sh

RUN chmod +x /root/dummy-web-server.py
RUN chmod +x /root/start.sh

ENTRYPOINT ["/root/start.sh"]
