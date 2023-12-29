FROM ubuntu:20.04
RUN apt update && apt install -y curl \
  && curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
  && apt install -y speedtest \
  && rm -rf /var/lib/apt/lists/*

CMD ["speedtest", "--accept-license", "--accept-gdpr"]
