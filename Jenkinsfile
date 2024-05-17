pipeline {
  agent any 
 stages {
        stage('checkout') { 
            steps { 
               //checkout scmGit(branches: [[name: '*/test']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sethusundar89/SpringBoot']])
               git credentialsId: 'bd86bcc2-b03b-43d7-9c8f-48fcf9497114', url: 'https://github.com/sethusundar89/SpringBoot'
            }
        }
        stage('build'){
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Deploy') {
            steps {
                sh 'chmod 777 Dockerfile'
                sh 'docker build -t temp . '
            }
        }
    }
}
