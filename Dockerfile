FROM ubuntu:trusty
MAINTAINER Fernando Mayo <fernando@tutum.co>, Feng Honglin <hfeng@tutum.co>
RUN apt-get update
RUN apt-get install -y wget

# Remove pre-installed database
RUN wget -O dt64.tgz http://dog-tunnel.tk/download/linux64
RUN mkdir /dt64
RUN tar zxvf dt64.tgz  -C /dt64

RUN chmod -R 777 /dt64

CMD ["/dt64/dtunnel_s" ,"-admin:1234" , "FOREGROUND"] 
EXPOSE 8000 8018 1234
