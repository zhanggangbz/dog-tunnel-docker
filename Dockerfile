FROM ubuntu:trusty
MAINTAINER Fernando Mayo <fernando@tutum.co>, Feng Honglin <hfeng@tutum.co>

# Install packages
ENV DEBIAN_FRONTEND noninteractive

# Remove pre-installed database
RUN wget -O dt64.tgz http://dog-tunnel.tk/download/linux64
RUN tar zxvf dt64.tgz  -C /

RUN chmod -R 777 /dt64

CMD /dt64/dtunnel_s -admin :1234
EXPOSE 8000 8018 1234