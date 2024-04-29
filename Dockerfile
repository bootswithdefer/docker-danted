FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y dante-server && rm -rf /var/lib/apt/lists/*

COPY danted.conf /etc/danted.conf
