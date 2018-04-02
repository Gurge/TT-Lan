#
# Teamspeak server
#


FROM gameservermanagers/linuxgsm-docker
LABEL maintainer="Gurge https://github.com/Gurge"

#ports
EXPOSE 9987/udp
EXPOSE 10011
EXPOSE 30033


RUN  mkdir -p serverfiles && \
     chown -R lgsm:lgsm serverfiles && \
     mkdir -p log && \
     chown -R lgsm:lgsm log 

VOLUME serverfiles
VOLUME log

RUN bash linuxgsm.sh ts3server

#RUN chmod +x startup.sh 
#    chmod +x startup.sh cron_monitor.sh mycron && \
#    crontab -u teamspeak mycron    


COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash","/entrypoint.sh" ]


















 


