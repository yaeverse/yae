# Yae - The open-source hyper-metaverse based on instant messaging.
# Copyright(c) 2022 Star Inc. All Rights Reserved.
# The software licensed under Mozilla Public License Version 2.0

FROM golang:alpine AS builder
COPY . /factory
RUN apk add git make \
    && cd /factory \
    && make \
    && go clean -cache

FROM alpine:latest
ENV GIN_MODE release
COPY --from=builder /factory/build/yae /app/yae
WORKDIR /app
ENTRYPOINT /app/yae
EXPOSE 6000
