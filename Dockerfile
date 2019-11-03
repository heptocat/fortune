# Dockerfile used to test fortune project
# Copies latest code from the local repository
# Repository must be cloned to the machine first
FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y \
    && apt-get install fortune -y \
    && mkdir -p /fortune/custom_fortunes

ENV PATH="/usr/games:${PATH}"

COPY ./custom_fortunes /fortune/custom_fortunes
COPY ./setup_custom_fortunes.sh /fortune/
RUN cd /fortune && chmod 755 setup_custom_fortunes.sh

WORKDIR /fortune