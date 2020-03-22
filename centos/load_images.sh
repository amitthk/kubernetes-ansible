f [[ $# -eq 0 ]] ; then
    echo 'usage: bash -c ./loadimgs.sh images.list'
    exit 1
fi
while read REPOSITORY TAG IMAGE_ID
do
        echo "== Tagging $REPOSITORY $TAG $IMAGE_ID =="
        docker tag "$IMAGE_ID" "$REPOSITORY:$TAG"
done < $1
