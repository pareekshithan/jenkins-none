#!/bin/bash
branch=$1
git pull https://github.com/pareekshithan/github_central.git $branch
if [ $? -ne 0 ];then
git clone https://github.com/pareekshithan/github_central.git $branch
fi
cd /home/ec2-user/github_repo2/master
make PROJ1.exe
if [ $? -eq 0 ];then
echo "your build is succesful" | mail -s "build" pareekshith.a.n@gmail.com
else
echo "your build is unsuccesful" | mail -s "build" pareekshith.a.n@gmail.com
fi

