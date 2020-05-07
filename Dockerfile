# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v1.9.1

RUN curl -sLO https://storage.googleapis.com/skaffold/releases/${VERSION}/skaffold-linux-amd64 && \
    chmod +x skaffold-linux-amd64 && mv skaffold-linux-amd64 /usr/local/bin/skaffold

ENTRYPOINT ["bash"]
