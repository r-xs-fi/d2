FROM alpine:latest

ARG TARGETOS=linux
ARG TARGETARCH=amd64

WORKDIR /workspace

ENTRYPOINT ["/usr/bin/d2"]

RUN mkdir /tmp/install \
	&& cd /tmp/install \
	&& wget -O dummy.tar.gz "https://function61.com/app-dl/api/github.com/terrastruct/d2/latest_releases_asset/__autodetect__.tar.gz?os=$TARGETOS&arch=$TARGETARCH" \
	&& tar -xzf *.tar.gz \
	&& mv d2-*/bin/d2 /usr/bin/d2 \
	&& rm -rf /tmp/install

# run as unprivileged user
USER 1000:1000
