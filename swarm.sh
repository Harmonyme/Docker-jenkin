#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker 
sudo systemctl enable docker 
systemctl status docker 

docker swarm join --token SWMTKN-1-1bomoofx4ulef0fo0rqgs9a6uvgvsdh42em3ly9qm0rksbcmlh-ck6og9pvkep33ryxcn4ymp511 164.92.157.144:2377


docker service update \
--image=jenkins/jenkins:$1 \
--update-failure-action rollback \
jenkins_jenkins




