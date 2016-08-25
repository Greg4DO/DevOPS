#!/bin/bash
ssh -tt -i "~/.ssh/AWS_key1.pem" ubuntu@ec2-52-36-100-89.us-west-2.compute.amazonaws.com -p 22055 "ssh vagrant@localhost -p 22077 <<EOF >"
sudo pvcreate /dev/sdb
sudo vgcreate exam /dev/sdb
sudo lvcreate -n files --size 1g exam
sudo mkfs.ext4 /dev/exam/files
sudo mkdir /mnt/semeniuta
sudo mount /dev/exam/files  /mnt/semeniuta

cd /mnt/semeniuta ; for f in {1..10} ; do sudo dd if=/dev/zero of=$f$(head -c 100 /dev/urandom | tr -dc 'a-z' | fold -w 5 | head -n 1).txt  bs=1M  count=1 ; done

sudo useradd tstuser
sudo usermod -aG sudo tstuser
chmod -R 760 /mnt/semeniuta

hostname
hostname --ip-address
arp -n | cut -d' ' -f17
id tstuser
sudo ls -la /mnt/semeniuta

sudo lvremove /dev/exam/files
sudo vgremove exam
sudo pvremove /dev/sdb
EOF

