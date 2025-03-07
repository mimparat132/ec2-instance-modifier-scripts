#!/bin/sh 

aws ec2 describe-instances --filters "{Name=}${s}"  --query "Reservations[*].Instances[*].{PublicIp:PublicIpAddress,PublicDnsName:PublicDnsName,Name:Tags[?Key=='Name']|[0].Value,Status:State.Name,InstanceID:InstanceId,Instancetype:InstanceType}" --output table


