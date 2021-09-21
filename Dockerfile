FROM ubuntu:20.04
RUN apt update && apt install -y wget curl \
  && wget https://install.speedtest.net/app/cli/install.deb.sh -O /tmp/install.deb.sh \
  && bash /tmp/install.deb.sh \
  && apt install -y speedtest \
  && rm -rf /var/lib/apt/lists/*

CMD ["speedtest", "--accept-license", "--accept-gdpr"]
