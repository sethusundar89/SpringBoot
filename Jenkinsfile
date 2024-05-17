pipeline {
  environment { 
        registry = "srisundar89/firstrepo" 
        registryCredential = 'srisundar89' 
       //dockerImage = '' 
    }
  agent any 
 stages {
       
        stage('checkout') { 
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
                sh 'docker build -t sundar . '
            }
        }

   stage('Deploy push image docker hub') { 
          steps { 
                sh 'aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 058264508779.dkr.ecr.us-east-1.amazonaws.com'
                sh 'docker tag sundar:latest 058264508779.dkr.ecr.us-east-1.amazonaws.com/sundar:latest'
                sh 'docker push 058264508779.dkr.ecr.us-east-1.amazonaws.com/sundar:latest'
                } 
            }
        } 
    }

