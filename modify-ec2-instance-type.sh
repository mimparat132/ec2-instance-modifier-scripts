#!/bin/bash

# $1 is the instance ID
# $2 is the desired ec2 instance type

aws ec2 modify-instance-attribute --instance-id $1 --instance-type "{\"Value\": \"$2\"}"
