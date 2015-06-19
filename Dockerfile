FROM debian:jessie

RUN echo deb http://http.debian.net/debian jessie-backports main >/etc/apt/sources.list.d/backports.list && \
	apt-get update && \
	apt-get install -y build-essential dietlibc-dev docker.io

COPY src /usr/src

WORKDIR /usr/src

CMD ["/bin/bash", "build.sh"]
