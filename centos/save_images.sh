#!/bin/bash
docker images | awk '{print $1 " " $2 " " $3 }' | tr -c "a-z A-Z0-9_.\n-" "%" | while read REPOSITORY TAG IMAGE_ID
do
  echo "== Saving $REPOSITORY $TAG $IMAGE_ID =="
  docker  save   -o /data/imgs/k8s/$REPOSITORY-$TAG-$IMAGE_ID.tar $IMAGE_ID
done
