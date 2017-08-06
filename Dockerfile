FROM debian:jessie
LABEL maintainer "Kyle Lucy <kmlucy@gmail.com>"

COPY . /

ENV OPTIONS="-n -d" LC_ALL=C.UTF-8 LANG=en_US.UTF-8 LANGUAGE=en_US.UTF-8

RUN chmod +x /build.sh && chmod +x /run.sh && sync && sleep 1 && /build.sh

WORKDIR /

CMD /run.sh
