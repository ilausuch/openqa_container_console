#!/bin/bash

# openqa-clone-custom-git-opensuse.sh <HOST> <PR> <Old job> <variable>

docker-compose exec console /usr/share/openqa/script/openqa-clone-custom-git-refspec $2 $3 $4 --clone-job-args="--host $1"