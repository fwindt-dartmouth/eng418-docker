#!/bin/sh

case "$1" in
  llm)
    docker run --name eng418-llm -it -d --rm -p 8888:8888 -v .:/mnt/notebooks eng418-llm
    ;;
  translation)
    docker run --name eng418-translation -it -d --rm -p 8888:8888 -v .:/mnt/notebooks eng418-translation
    ;;
  project)
    docker run --name eng418-project -it -d --rm -p 8888:8888 -v .:/mnt/notebooks eng418-project
    ;;
  *)
    echo "Usage: $0 {llm|translation|project}"
    exit 1
    ;;
esac
