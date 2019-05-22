FROM ubuntu:bionic

RUN apt-get update -qq && \
    apt-get install -y dnsutils

ADD entrypoint.sh /opt/entrypoint.sh

CMD [ "/opt/entrypoint.sh" ]