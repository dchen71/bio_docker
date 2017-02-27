FROM ubuntu
MAINTAINER Daniel Chen

RUN apt-get update && apt-get -y upgrade \
    && apt-get -y install wget \
    && wget https://github.com/pachterlab/kallisto/releases/download/v0.43.0/kallisto_linux-v0.43.0.tar.gz \
    && tar xvfz kallisto_linux-v0.43.0.tar.gz 

WORKDIR /data/