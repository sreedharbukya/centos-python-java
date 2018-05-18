FROM centos:7

RUN yum -y upgrade && \
    yum -y install curl

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=66 \
    JAVA_BUILD=17 \
    JAVA_START_HEAP=32m \
    JAVA_MAX_HEAP=512m \
    LOG_LEVEL="INFO" 

RUN yum install -y java-1.8.0-openjdk

RUN yum install -y  wget && yum install -y gcc gcc-c++ && yum install -y make

COPY install_python.sh /
RUN /install_python.sh -y













