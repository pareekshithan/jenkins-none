pipeline {
    agent any 
    stages {
        stage('build') { 
            steps {
                sh "build1.sh" 
            }
        }
        stage('deploy' { 
            steps {
                sh "mail1.sh"
            }
        }
        stage('test') { 
            steps {
                sh "deploymake.sh" 
           }
        }
    }
}

