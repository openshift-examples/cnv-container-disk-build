FROM registry.access.redhat.com/ubi8/ubi-minimal AS fetcher

ARG image_url=http://download.cirros-cloud.net/0.5.1/cirros-0.5.1-x86_64-disk.img

RUN mkdir /disk/ && \
    cd /disk/ && \
    curl -L -O $image_url

FROM scratch
COPY --from=fetcher /disk /disk
