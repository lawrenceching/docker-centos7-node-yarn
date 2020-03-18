FROM centos:7

LABEL author="Lawrence Ching"
LABEL description="A centos:7 image has node 13, npm and yarn installed"

RUN yum -y update && yum clean all
RUN yum install -y curl
RUN curl -sL https://rpm.nodesource.com/setup_13.x | bash -
RUN yum -y install gcc-c++ make nodejs
RUN npm install -g yarn