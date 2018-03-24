#!/bin/bash

PROJECT_NAME=`cat .name`
eval $(docker-machine env)
docker build -t mherod/${PROJECT_NAME} .
docker push mherod/${PROJECT_NAME}
