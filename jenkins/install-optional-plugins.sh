#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)

docker exec jenkins-jenkins-blueocean-1 bash jenkins-plugin-cli --plugins simple-theme-plugin:146.v0e67db_a_9052e
if [ ! -e ${SCRIPT_DIR}/jenkins-home/userContent/ModernJenkins-Theme ]; then
  cd ${SCRIPT_DIR}/jenkins-home/userContent && git clone https://github.com/mikepenz/ModernJenkins-Theme.git
fi
