#!/usr/bin/env bash
set -e

IMAGE_NAME=my-flask-app

docker build -t $IMAGE_NAME .
docker save $IMAGE_NAME > $IMAGE_NAME.tar

scp $IMAGE_NAME.tar user@your-ec2:/home/user/
ssh user@your-ec2 << EOF
  docker load < /home/user/$IMAGE_NAME.tar
  docker stop flask || true
  docker rm flask || true
  docker run -d -p 80:80 --name flask $IMAGE_NAME
EOF
