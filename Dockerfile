FROM centos 
RUN mkdir /usr/java
COPY jdk-8u101-linux-x64.tar.gz /usr/java/ 
WORKDIR /usr/java
RUN  tar -zxf jdk-8u101-linux-x64.tar.gz
ENV JAVA_HOME /usr/java/jdk1.8.0_101
ENV PATH $PATH:$JAVA_HOME/bin

RUN java -version

