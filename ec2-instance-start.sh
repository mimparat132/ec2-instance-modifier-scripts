#!/bin/sh

# $1 is ec2 instance ID 

aws ec2 start-instances --instance-ids $1
