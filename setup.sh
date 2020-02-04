#!/bin/bash
git pull
docker build -t zhindonm/thpdocker .
docker run --rm -d -p 22:22 zhindonm/thpdocker