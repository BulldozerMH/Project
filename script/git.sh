#!/bin/bash

# git script
mkdir /home/ubuntu/Project
cd /home/ubuntu/Project
git init
git config --global user.name "I"
git config --global user.email "/</>"
#git remote add Project git@github.com:BulldozerMH/Project.git main
cd /home/.ssh
ssh-keygen -t ed25519 -f SSH
cat /home/.ssh/SSH.pub
