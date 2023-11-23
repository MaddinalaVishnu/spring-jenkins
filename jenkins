pipeline{
    agent any
    tools{
        maven 'maven_3_9_5'
        
    }
    stages{
        stage('Build Maven'){
            steps{
               checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '7acb85df-947f-4208-bfe2-e271b14b3962', url: 'https://github.com/MaddinalaVishnu/spring-jenkins']])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t dockervishnu321/cicd-integration .'
                }
            }
        }
            stage('Push image to docker hub'){
                steps{
                    script{
                        withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhubpwd')]) {
                        bat 'docker login -u dockervishnu321 -p Vishnu@123'
}
                        bat 'docker push dockervishnu321/cicd-integration'
                    }
                }
                
            }
            
        
    }
    
}