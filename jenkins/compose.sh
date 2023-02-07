#!/bin/sh

# docker compose
docker pull jenkins/jenkins
docker build -t jenkins/jenkins .
docker network create jenkins
docker-compose -f docker-compose.yml up -d
sudo chown -R ${USER}:${USER} jenkins-*

# plugins
## install discord-notifier
docker exec jenkins-jenkins-blueocean-1 bash jenkins-plugin-cli --plugins discord-notifier:218.ve2b_887e3a_f28
