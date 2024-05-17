pipeline {
  environment { 
        registry = "srisundar89/firstrepo" 
        registryCredential = 'srisundar89' 
       dockerImage = '' 
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
                dockerImage = sh 'docker build -t temp . '
            }
        }

   stage('Deploy our image') { 
          steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
    }
}
