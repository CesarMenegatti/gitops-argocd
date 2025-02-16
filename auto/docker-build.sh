#! /bin/sh
#build image
docker build -t chmenegatti/gocd-test:v$GO_PIPELINE_COUNTER ../.

#login into docker-hub
echo $DOCKER_PASS >> pass.txt
cat pass.txt | docker login -u chmenegatti --password-stdin

#push image to docker hub
docker push chmenegatti/gocd-test:v$GO_PIPELINE_COUNTER
docker push chmenegatti/gocd-test:latest