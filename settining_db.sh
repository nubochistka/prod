#!bin/bash
rm -rf .git
NAME_IMAGE=test
REPO_DOCKER=krevetka
docker build -t $NAME_IMAGE apache
docker tag $NAME_IMAGE $REPO_DOCKER/$NAME_IMAGE
docker push $REPO_DOCKER/$NAME_IMAGE

sed -i "s/<IMAGE_REPO>/$REPO_DOCKER\/$NAME_IMAGE/" Dockerrun.aws.json

