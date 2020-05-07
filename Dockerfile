FROM registry.access.redhat.com/ubi8/ubi-minimal AS fetcher

ARG image_url

RUN mkdir /disk/ && \
    cd /disk/ && \
    curl -L -O $image_url

FROM scratch
COPY --from=fetcher /disk /disk
