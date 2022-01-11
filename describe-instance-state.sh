#!/bin/sh 

aws ec2 describe-instances --instance-ids $1 --query "Reservations[*].Instances[*].{PublicIp:PublicIpAddress,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name,InstanceID:InstanceId,Instancetype:InstanceType}" --output table
