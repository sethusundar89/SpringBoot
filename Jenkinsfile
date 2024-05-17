pipeline {
  agent any 
 stages {
       
        stage('checkout') { 
           steps('test') {
             sh 'echo testing'
           }
            steps { 
               //git credentialsId: 'bd86bcc2-b03b-43d7-9c8f-48fcf9497114', url: 'https://github.com/sethusundar89/SpringBoot'
               git branch: 'test', credentialsId: 'bd86bcc2-b03b-43d7-9c8f-48fcf9497114', url: 'https://github.com/sethusundar89/SpringBoot.git'
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
