FROM centos:6
MAINTAINER re20y <master@mkaliez.com>
RUN yum -y update \
    && yum -y install wget net-tool; yum clean all \
    && wget -O install.sh http://download.bt.cn/install/install.sh \
    && printf "y\n0"|bash ./install.sh
ADD ./start.sh /start.sh
EXPOSE 21 22 80 443 888 3306 8888
CMD bash start.sh && /usr/sbin/sshd -D
