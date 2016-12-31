#!/bin/bash 

#ecs-cli configure --region us-east-1 --profile DevAdmin --cluster scaffold-ecs-cli-cluster

echo "create a cluster"
echo 
THECMD="ecs-cli up --keypair DevAdmin-key-pair --capability-iam --size 1 --instance-type t2.large --force"
echo $THECMD
`$THECMD`

COMPOSEUP="aws docker jcampbell$ ecs-cli compose --file ./docker-compose.yml --project-name scaffold-docker service up"
echo $COMPOSEUP
`$COMPOSEUP`