pipeline {
  environment {
    imagename = "srisundar89/firstrepo"
    registryCredential = 'srisundar89'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Cloning Git') {
      steps {
       git branch: 'test', credentialsId: 'bd86bcc2-b03b-43d7-9c8f-48fcf9497114', url: 'https://github.com/sethusundar89/SpringBoot.git'

      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build temp
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push("$BUILD_NUMBER")
             dockerImage.push('latest')

          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $imagename:$BUILD_NUMBER"
         sh "docker rmi $imagename:latest"

      }
    }
  }
}
