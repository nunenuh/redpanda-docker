FROM bitnami/minideb:bullseye


ENV container docker
ENV LC_ALL C
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install build-essential libssl-dev wget nano curl file git locales --no-install-recommends -y

WORKDIR /root

## Run the setup script to download and install the repo
RUN wget --no-check-certificate 'https://dl.redpanda.com/nzc4ZYQK3WRGd9sy/redpanda/cfg/setup/bash.deb.sh' -O /root/bash.deb.sh && \
    chmod +x /root/bash.deb.sh && \
    /root/bash.deb.sh

RUN apt-get install redpanda -y 

RUN rpk redpanda mode production

RUN whereis rpk

# RUN rpk redpanda tune all

RUN localedef -i en_US -f UTF-8 en_US.UTF-8

COPY rpk.sh /root/rpk.sh
RUN chmod +x /root/rpk.sh


CMD ["/bin/bash", "rpk.sh"]

# RUN rpk start --smp=1 --reserve-memory=0M --node-id=0 \
#     --advertise-kafka-addr=PLAINTEXT://0.0.0.0:29092,OUTSIDE://0.0.0.0:9092 \
#     --advertise-kafka-addr=PLAINTEXT://redpanda:29092,OUTSIDE://localhost:9092 \
#     --pandaproxy-addr=PLAINTEXT://0.0.0.0:28082,OUTSIDE://0.0.0.0:8082 \
#     --advertise-pandaproxy-addr=PLAINTEXT://redpanda:28082,OUTSIDE://localhost:8082 \
#     --check=false




