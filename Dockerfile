# Docker 0.10.0, build dc9c28f
# Image paasta/monger

FROM paasta/base
MAINTAINER Tony Tahmouch <ttahmouch@gmail.com>

# Prepare Database
ADD etc/mongodb.conf /etc/
RUN su - root -c "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
                  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | \
                  tee /etc/apt/sources.list.d/mongodb.list && \
                  dpkg-divert --local --rename --add /sbin/initctl && \
                  ln -s /bin/true /sbin/initctl && \
                  apt-get update && \
                  apt-get install -q -y mongodb-org && \
                  mkdir -p /data/db"

# Prepare Supervisor Daemon
ADD supervisor/database.conf /etc/supervisor/conf.d/
