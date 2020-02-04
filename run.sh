#!/bin/bash
git pull
docker build -t zhindonm/thpdocker .
docker run --name thp --cap-add=NET_ADMIN -d -it -p 22:22 zhindonm/thpdocker -c 'start.sh'
echo "Container started dettached use:"
echo "docker attach thp"