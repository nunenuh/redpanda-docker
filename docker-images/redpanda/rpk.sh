#!/bin/bash

rpk start --smp=1 --reserve-memory=0M --node-id=0 \
--kafka-addr=PLAINTEXT://0.0.0.0:29092,OUTSIDE://0.0.0.0:9092 \
--advertise-kafka-addr=PLAINTEXT://redpanda:29092,OUTSIDE://localhost:9092 \
--pandaproxy-addr=PLAINTEXT://0.0.0.0:28082,OUTSIDE://0.0.0.0:8082 \
--advertise-pandaproxy-addr=PLAINTEXT://redpanda:28082,OUTSIDE://localhost:8082 \
--check=false