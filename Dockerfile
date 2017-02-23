FROM scratch
RUN curl https://artifacts.elastic.co/downloads/kibana/kibana-5.2.1-linux-x86_64.tar.gz
RUN sha1sum kibana-5.2.1-linux-x86_64.tar.gz
RUN tar -xzf kibana-5.2.1-linux-x86_64.tar.gz -O /app/
WORKDIR /app
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD '/start.sh'
EXPOSE 5601