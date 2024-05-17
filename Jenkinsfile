pipeline {
  agent any 
 stages {
        stage('checkout') { 
            steps { 
               checkout scmGit(branches: [[name: '*/test']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sethusundar89/SpringBoot']])
            }
        }
        stage('build'){
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'sudo chmwon ubuntu Dockerfile'
                sh 'sudo chown ubuntu Dockerfile'
                sh ' sudo docker build -t temp . '
            }
        }
    }
}
