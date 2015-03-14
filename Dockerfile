FROM centos:centos6
MAINTAINER pepechoko

RUN yum update -y \
  && yum clean all 

RUN yum install -y \
  curl \
  git \
  && yum clean all 

RUN \
  curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -P chefdk && \
  chef gem install --no-ri --no-rdoc knife-solo

RUN locale-gen en_US.UTF-8
