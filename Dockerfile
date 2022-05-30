FROM neilpang/acme.sh:latest

ENV CERTS_VERSION=1.1.13

WORKDIR /root/

RUN apk --no-cache add libidn jq \
  && mkdir certs

COPY scripts/* ./

CMD ["sh", "certs.sh"]