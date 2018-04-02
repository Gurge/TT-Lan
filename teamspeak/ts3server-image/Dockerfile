#
# Teamspeak server
#
FROM gameservermanagers/linuxgsm-docker
LABEL maintainer="Gurge https://github.com/Gurge"

RUN  mkdir -p serverfiles && \
     chown -R lgsm:lgsm serverfiles && \
     mkdir -p log && \
     chown -R lgsm:lgsm log 

VOLUME serverfiles
VOLUME log

# special for ts3server
RUN bash linuxgsm.sh ts3server

#ports
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash","/entrypoint.sh" ]


















 


