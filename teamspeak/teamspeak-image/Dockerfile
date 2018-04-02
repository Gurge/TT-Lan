# start with ubuntu
FROM ubuntu:16.10
MAINTAINER Jan Georges

# update and req
RUN locale-gen en_US.UTF-8 && \
    dpkg --add-architecture i386 && \ 
    apt-get -y update && \
    apt-get install -y \
	curl \
	wget \
	file \
	gzip \
	bzip2 \
	bsdmainutils \
	python \
	util-linux \
	iproute \
	cron 

# Set the locale
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

#ports
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033

# create user and script dir
RUN groupadd -r teamspeak && \
    useradd -r -g teamspeak teamspeak && \
    mkdir /scripts 

WORKDIR /scripts
COPY startup.sh startup.sh
COPY cron_monitor.sh cron_monitor.sh
COPY mycron mycron

RUN chown -R teamspeak:teamspeak /scripts && \
    chmod +x startup.sh cron_monitor.sh mycron && \
    crontab -u teamspeak mycron    
	
CMD ./startup.sh


















 


