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
                sh 'sudo chmwon docker Dockerfile'
                sh 'sudo chown docker Dockerfile'
                sh ' sudo docker build -t temp . '
            }
        }
    }
}
