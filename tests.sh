#!/bin/bash
if  cat /home/admine/.docker/config.json | grep docker
then echo "DockerHub jest zalogowany"
else 
echo "Logowanie do DockerHuba"  
docker login -u krystiandzydzy -p dckr_pat_m3CDMNqUUpD1WNUpnA5LPHSfy2o 
fi 