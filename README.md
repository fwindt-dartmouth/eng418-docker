# What even is this

This repo contains enough to build and then run a Docker container that has the same Python (plus libraries) environment as the Coursera labs for ENG418. The `requirements*.txt` files are created based on the specification in https://github.com/ENGG-418/nlp-exercise-101.

The specs list different Python versions, so three different environments are made available.

# How to use

1. Install Docker, or something compatible
2. Run `sh build.sh` or copy the commands from that file and run them on the command line. This will take some time as a far amount of libraries and container layers need to be downloaded and installed
3. Whenever you want to use the environment, 
    - change to the directory you want to be the root of the file system Jupyter notebook server will be able to see
    - run `sh run.sh [llm|translation|project]` or copy the commands relevant to one of the three environments from that file and run them on the command line
4. Run `docker ps` to list all running containers and find the appropriate one (the image type starts with `eng418`), and note its ID
5. Run `docker logs [ID]` to show the last output from that container. Towards the end it will say "Jupyter Server 2.15.0 is running at:", skip the next line and copy the one that starts with `http://127.0.0.1:8888` and paste it into a browser window
6. When you're done, run `docker stop [ID]`

# Does it work

Seems to. No guarantees. There's no GPU acceleration so you're trading potential performance with ease of use.
