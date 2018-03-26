FROM amazonlinux:latest

MAINTAINER Ryan Means <ryan.means@lifeway.com>

RUN yum -y update && \
 yum -y install ruby22 && \
 yum -y install python36 python36-virtualenv python36-pip && \
 yum -y install git

RUN python3.6 -m pip install awscli --upgrade --user

RUN python3.6 -m pip  install gitpython

RUN gem install cfn-nag

RUN yum clean all