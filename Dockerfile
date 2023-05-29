FROM ghcr.io/hiway-media/deb-imagemagick-libvips:latest
#

ENV GOLANG_VERSION 1.19.9

ENV url='https://dl.google.com/go/go${GOLANG_VERSION}.linux-amd64.tar.gz'


RUN apt-get update
RUN apt-get install wget

RUN wget ${url}

RUN tar -C /usr/local -xzf go${GOLANG_VERSION}.linux-amd64.tar.gz

RUN rm -rf go${GOLANG_VERSION}.linux-amd64.tar.gz

RUN export PATH=$PATH:/usr/local/go/bin

#
CMD ["/bin/bash"]
#