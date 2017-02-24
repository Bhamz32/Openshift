FROM kibana:latest
RUN chmod 777 /usr/local/bin/gosu
RUN chmod 777 /usr/local/bin/tini