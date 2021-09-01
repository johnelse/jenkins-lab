#!/bin/bash

set -eu

if [ $# != 1 ]
then
    echo "Usage: $0 <node-name>"
    exit 1
fi

NODE_NAME=$1
CONTAINER_NAME=jenkins-node-${NODE_NAME}

CREDENTIALS_FILE=credentials.sh
if [ -f $CREDENTIALS_FILE ]
then
    . credentials.sh
else
    echo "Please create $CREDENTIALS_FILE first"
fi

AGENT_SECRET=$(curl -L -s -u $JENKINS_USERNAME:$JENKINS_PASSWORD -X GET http://localhost:8080/computer/${NODE_NAME}/jenkins-agent.jnlp \
    | sed "s/.*<application-desc main-class=\"hudson.remoting.jnlp.Main\"><argument>\([a-z0-9]*\).*/\1/")

make -C agent

docker run -d --rm --name $CONTAINER_NAME \
    --network jenkins \
    -e AGENT_URL=http://jenkins:8080/computer/${NODE_NAME}/jenkins-agent.jnlp \
    -e AGENT_SECRET=$AGENT_SECRET \
    -v ~/.ssh:/home/jenkins/.ssh \
    ${USER}/jenkins-agent /home/jenkins/launch.sh

echo "Agent $NODE_NAME is now running"
