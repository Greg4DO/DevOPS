#!/bin/bash
scp ubuntu@ec2-52-36-100-89.us-west-2.compute.amazonaws.com -p 22055:"~/Git/DevOPS/Linux/script2.sh" "~/"
ssh -i "~/.ssh/AWS_key1.pem" ubuntu@ec2-52-36-100-89.us-west-2.compute.amazonaws.com -p 22055
ssh ubuntu@ec2-52-36-100-89.us-west-2.compute.amazonaws.com -p 22055 'bash -s' < "~/Git/DevOPS/Linux/script2.sh"
