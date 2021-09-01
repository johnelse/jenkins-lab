#!/bin/bash

docker network inspect jenkins || docker network create jenkins

docker run -d --rm -p 127.0.0.1:8080:8080 -p 127.0.0.1:50000:50000 \
    --network jenkins \
    -v jenkins_home:/var/jenkins_home \
    --name jenkins \
    jenkins/jenkins:lts

echo "Jenkins controller now running at http://127.0.0.1:8080"
