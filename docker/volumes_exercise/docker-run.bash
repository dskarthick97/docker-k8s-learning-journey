#!/bin/bash

# building the image
docker build \
--build-arg USER_ID=$(id -u) \
--build-arg GROUP_ID=$(id -g) \
-t feedback .

# instantiating a container
docker run -d \
--rm \
-p 80:80 \
-v /app/node_modules \
-v feedback:/app/feedback \
-v "/home/karthicksabari/karthick.dhilip/dev/learning/docker/volumes_exercise:/app" \
--name feedback_app \
feedback
# -u $(id -u ${USER}):$(id -g ${USER})  \ 


# executing commands in a running container
docker exec feedback_app ls -al ./feedback

# stopping and removing the container
docker stop feedback_app