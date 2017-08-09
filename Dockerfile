FROM centos:7
MAINTAINER <re20y master@mkaliez.com>
RUN yum list | grep initscripts  && yum -y install initscripts
RUN yum install -y wget && wget -O install.sh http://download.bt.cn/install/install.sh && printf "y\n0"|./install.sh
EXPOSE 21 22 80 443 888 8888
ENV PASSWORD mkaliez.com
ENTRYPOINT ["service bt restart"]
