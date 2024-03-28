!#/bin/bash

# get the ami id
ami-id=$(aws ec2 describe-images --filters "Name=name,Value=ubuntu/images/hvm-ssd/

# get default vpc id


# create security group with 22,80 ports opened


