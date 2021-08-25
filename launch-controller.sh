#!/bin/bash

docker network inspect jenkins || docker network create jenkins

docker run -d --rm -p 8080:8080 -p 50000:50000 \
    --network jenkins \
    -v jenkins_home:/var/jenkins_home \
    --name jenkins \
    jenkins/jenkins:lts
