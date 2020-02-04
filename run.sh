#!/bin/bash
git pull
echo "New version pulled from git"
echo ""
docker build -t zhindonm/thpdocker .
echo "Docker container BUILT"
echo ""
docker run --name thp --cap-add=NET_ADMIN -d -it -p 22:22 zhindonm/thpdocker
echo ""
docker exec thp bash start.sh
echo "Container started in dettached mode"
echo "use:        docker attach thp"
echo ""
