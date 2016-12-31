#!/bin/bash 
SCALEDOWN="aws --region us-east-1 ecs update-service --cluster scaffold-ecs-cli-cluster --service ecscompose-service-scaffold-docker --desired-count 0 --profile DevAdmin"
echo $SCALEDOWN
`$SCALEDOWN`


DEREGISTER="aws --region us-east-1 ecs deregister-container-instance --cluster scaffold-ecs-cli-cluster --force --profile DevAdmin"
echo $DEREGISTER
`$DEREGISTER`