FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y dumb-init dante-server && rm -rf /var/lib/apt/lists/*

COPY danted.conf /etc/danted.conf

EXPOSE 1080

ENTRYPOINT ["dumb-init"]
CMD ["danted"]
