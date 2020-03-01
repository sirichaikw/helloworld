# Use latest CentOS image
FROM centos:latest

# Maintainer By
MAINTAINER Sirichai.Ki

# Update base image
RUN yum -y update && yum clean all

# Install java 1.8.0
#RUN yum install java-1.8.0-openjdk

# Expose the ports
EXPOSE 80

# Set the default command to run on boot
ENTRYPOINT ["/bin/bash"]
