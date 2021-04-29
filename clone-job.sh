#!/bin/bash
# clone-job.sh <HOST> <JOB ID> <VARIABLE> 

docker-compose exec console /usr/share/openqa/script/clone_job.pl --within-instance $1 $2 $3