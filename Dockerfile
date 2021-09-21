FROM ubuntu:20.04
RUN apt update && apt install -y curl \
  && curl https://install.speedtest.net/app/cli/install.deb.sh | bash \
  && apt install -y speedtest \
  && rm -rf /var/lib/apt/lists/*

CMD ["speedtest", "--accept-license", "--accept-gdpr"]
