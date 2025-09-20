#!/bin/sh

docker build -f Dockerfile-llm -t eng418-llm .
docker build -f Dockerfile-translation -t eng418-translation .
docker build -f Dockerfile-project -t eng418-project .