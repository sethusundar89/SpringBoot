pipeline {
    agent any
    tools{
        maven 'maven_3_23_0'
    }
    stages{
        stage('checkout'){
            steps{
                checkout scmGit(branches: [[name: '*/test']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sethusundar89/SpringBoot']])
               
            }
        }
    }
    stages{
        stage('Build Maven'){
            steps{
                sh 'mvn clean install'
            }
        }
    }
}
