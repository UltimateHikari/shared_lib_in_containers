FROM ubuntu:xenial
RUN apt update 
COPY bin /shared
RUN apt install -y curl
COPY bin/libmyshared.so /usr/lib