FROM                                   ubuntu:20.04
LABEL maintainer.name="John Else" \
      maintainer.email="john.else@gmail.com"

RUN     apt-get -y update

RUN     apt-get -y install git git-lfs openjdk-8-jre-headless

RUN     useradd jenkins
RUN     mkdir -p /home/jenkins
RUN     chown jenkins:jenkins /home/jenkins

USER    jenkins
COPY    files/agent.jar /home/jenkins/agent.jar
COPY    files/launch.sh /home/jenkins/launch.sh
WORKDIR /home/jenkins
RUN     mkdir workspace
