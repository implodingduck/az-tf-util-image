#!/bin/bash
docker stop aztfutil
docker container rm aztfutil
docker build -t aztfutil .
docker run -p 8888:80 -d --name aztfutil aztfutil
docker logs -f aztfutil
