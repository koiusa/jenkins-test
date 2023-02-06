#!/bin/sh

docker pull jenkins/jenkins
docker build -t jenkins/jenkins .
docker network create jenkins
docker-compose -f docker-compose.yml up -d
sudo chown -R ${USER}:${USER} jenkins-*

