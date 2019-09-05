FROM ubuntu:18.04

RUN apt-get update && apt-get install wget unzip -y

COPY ./radar.conf /home/radar.conf

RUN wget http://s3.amazonaws.com/runscope-downloads/runscope-radar/latest/linux-amd64/runscope-radar.zip && \
    unzip runscope-radar.zip -d /usr/local/bin/ && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* runscope-radar.zip
RUN chmod +x /usr/local/bin/runscope-radar

CMD /usr/local/bin/runscope-radar -f /home/radar.conf