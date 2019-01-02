#!/bin/bash
rm -rf PROJ1.exe *.o
./build1.sh
if [ $? -eq 0 ];then
echo "testing" | mail -s "test" pareekshith.a.n@gmail.com
fi
