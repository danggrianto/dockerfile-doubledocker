FROM resin/rpi-raspbian

MAINTAINER Daniel Anggrianto <d.anggrianto@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y curl 
RUN curl -s https://get.docker.io/ubuntu/ | sh
RUN echo 'DOCKER_OPTS="-H :2375 -H unix:///var/run/docker.sock"' >> /etc/default/docker

VOLUME /var/lib/docker

EXPOSE 2375

CMD /etc/init.d/docker start && sleep 1 && tail -F /var/log/upstart/docker.log

