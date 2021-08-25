#!/bin/bash

java -jar agent.jar \
    -jnlpUrl $AGENT_URL \
    -secret $AGENT_SECRET \
    -workDir "/home/jenkins"
