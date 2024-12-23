#!/bin/bash

# disk space

sudo lvextend -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv

sudo resize2fs /dev/mapper/ubuntu--vg-ubuntu--lv

# git script
mkdir /home/ubuntu/Project
cd /home/ubuntu/Project
git init
git remote add Project https://github.com/BulldozerMH/Project.git
git pull Project main
