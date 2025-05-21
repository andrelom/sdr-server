#
# Build
#
# To get the download URL for SpyServer, visit: https://airspy.com/download/

FROM ubuntu:latest AS build

ARG AIRSPY_DOWNLOAD_URL

WORKDIR /airspy

RUN apt-get update && \
  apt-get install -y wget && \
  wget -O spyserver.tgz ${AIRSPY_DOWNLOAD_URL} && \
  tar xvzf spyserver.tgz && \
  sed -i "s/^bind_port = .*/bind_port = 5555/" spyserver.config

#
# Main

FROM ubuntu:latest AS main

WORKDIR /airspy

COPY entrypoint.sh /airspy/entrypoint.sh

COPY --from=build /airspy/spyserver /airspy/spyserver
COPY --from=build /airspy/spyserver.config /airspy/spyserver.config

RUN apt-get update && \
  apt-get install -y rtl-sdr librtlsdr-dev && \
  apt-get clean && rm -rf /var/lib/apt/lists/* && \
  chmod +x /airspy/entrypoint.sh

CMD ["/airspy/entrypoint.sh"]
