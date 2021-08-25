#!/bin/bash

java -jar agent.jar \
    -jnlpUrl $SLAVE_URL \
    -secret $SLAVE_SECRET \
    -workDir "/home/jenkins"
