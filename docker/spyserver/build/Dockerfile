#
# Build
#
# To get the download URL for SpyServer, visit: https://airspy.com/download/

FROM ubuntu:latest AS build

ARG SPYSERVER_DOWNLOAD_URL

WORKDIR /spyserver

RUN apt-get update && \
  apt-get install -y wget && \
  wget -O spyserver.tgz ${SPYSERVER_DOWNLOAD_URL} && \
  tar xvzf spyserver.tgz && \
  sed -i "s/^bind_port = .*/bind_port = 5555/" spyserver.config

#
# Main

FROM ubuntu:latest AS main

WORKDIR /spyserver

COPY entrypoint.sh /spyserver/entrypoint.sh

COPY --from=build /spyserver/spyserver /spyserver/spyserver
COPY --from=build /spyserver/spyserver.config /spyserver/spyserver.config

RUN apt-get update && \
  apt-get install -y rtl-sdr librtlsdr-dev && \
  apt-get clean && rm -rf /var/lib/apt/lists/* && \
  chmod +x /spyserver/entrypoint.sh

CMD ["/spyserver/entrypoint.sh"]
