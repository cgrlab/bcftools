FROM ubuntu:14.04

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y build-essential \
    zlib1g-dev

RUN git clone https://github.com/cgrlab/htslib.git

RUN git clone https://github.com/cgrlab/bcftools.git; cd bcftools; git checkout tags/1.3.1; make

WORKDIR /opt
