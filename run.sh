#!/bin/bash
git pull
docker build -t zhindonm/thpdocker .
docker run --name thp --cap-add=NET_ADMIN -d -it -p 22:22 zhindonm/thpdocker bash ./start.sh
echo "Container started in dettached mode - use:"
echo "\t docker attach thp"