# docker build -t vectorasd/curswork .
# docker run --privileged --rm -it --name MyPrecious -p 2100:2100 vectorasd/curswork bash

FROM rockylinux:8
#RUN set -ex \
#    && yum makecache \
#    && yum -y update \
#    && yum -y install dnf-plugins-core \
#    && yum config-manager --set-enabled powertools
RUN set -ex \
    && yum makecache \
    && yum -y install gcc

WORKDIR /meow

COPY lab6.c curswork.c
RUN gcc curswork.c -save-temps -lpthread -o main

COPY .bashrc /root/
CMD ./main