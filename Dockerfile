FROM debian:bullseye

ENV MKCERT_VERSION=v1.4.3
ENV MKCERT_PLATFORM=amd64
ENV CERT_HOSTNAME=localhost
ENV CERT_DOMAIN=local.arpa

RUN apt-get update && apt-get install -y libnss3-tools
ADD https://github.com/FiloSottile/mkcert/releases/download/${MKCERT_VERSION}/mkcert-${MKCERT_VERSION}-linux-${MKCERT_PLATFORM} /usr/sbin/mkcert
RUN chmod 0755 /usr/sbin/mkcert

ENV CAROOT=/certs.d
WORKDIR /certs.d

COPY mkcert.sh /mkcert.sh
ENTRYPOINT [ "/mkcert.sh" ]
