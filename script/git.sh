#!/bin/bash

# git script
mkdir /home/ubuntu/Project
cd /home/ubuntu/Project
git init
git remote add Project https://github.com/BulldozerMH/Project.git
git pull Project main
