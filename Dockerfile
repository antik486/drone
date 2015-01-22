#                        ##        .
#                  ## ## ##       ==
#               ## ## ## ##      ===
#           /""""""""""""""""\___/ ===
#      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#           \______ o          __/
#             \    \        __/
#              \____\______/

FROM centos:centos7
MAINTAINER antik486 <antik486@gmail.com>

RUN yum -y install http://downloads.drone.io/master/drone.rpm

RUN yum -y update; \
    yum clean all

ENV DRONE_SERVER_PORT :80
ENV DRONE_DATABASE_DATASOURCE /var/lib/drone/drone.sqlite

EXPOSE 80

VOLUME /var/lib/drone

CMD /usr/local/bin/droned
