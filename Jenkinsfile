pipeline {
    agent any 
    stages {
        stage('build') { 
            steps {
                sh ''' 
			#!/bin/bash
		git pull https://github.com/pareekshithan/github_central.git master
		if [ $? -ne 0 ];then
		git clone https://github.com/pareekshithan/github_central.git master
		fi
		cd /home/ec2-user/github_repo2/master
		make PROJ1.exe
		if [ $? -eq 0 ];then
		echo "your build is succesful" | mail -s "build" pareekshith.a.n@gmail.com
		else
		echo "your build is unsuccesful" | mail -s "build" pareekshith.a.n@gmail.com
		fi
		'''
          }
        }
        stage('deploy') { 
            steps {
                sh '''
#!/bin/bash

cp /home/ec2-user/github_repo2/master/PROJ1.exe /home/ec2-user/github_repo1
'''
            }
        }
        stage('test') { 
            steps {
                sh '''
#!/bin/bash
rm -rf PROJ1.exe *.o
./build1.sh
if [ $? -eq 0 ];then
echo "testing" | mail -s "test" pareekshith.a.n@gmail.com
fi
''' 
           }
        }
    }
}

