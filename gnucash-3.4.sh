#!/usr/bin/env bash

IMAGE_NAME=slspeek/gnucash-3.4

docker run --net=host -e DISPLAY -e LANG -e LANGUAGE -e LC_ALL \
    --user $UID:$GID \
    --workdir="/home/$USER" \
    --volume=/tmp/.X11-unix  \
    --volume="$HOME:$HOME" \
    --volume="/etc/group:/etc/group:ro" \
    --volume="/etc/passwd:/etc/passwd:ro" \
    --volume="/etc/shadow:/etc/shadow:ro" \
    $IMAGE_NAME \
    gnucash "$@"

