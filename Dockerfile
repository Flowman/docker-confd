FROM alpine:latest

MAINTAINER Peter Szalatnay <theotherland@gmail.com>

RUN apk --update add \
		curl \
		jq \
	&& rm -rf /var/cache/apk/* \
	&& curl -SL https://github.com/kelseyhightower/confd/releases/download/v0.11.0/confd-0.11.0-linux-amd64 -o /confd \
	&& chmod +x /confd

ENTRYPOINT ["/confd"]