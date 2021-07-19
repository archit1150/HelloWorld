pipeline {
    agent any
    tools{
     maven 'Maven'
     jdk 'jdk8'
 }
    stages{
        stage('Checkout'){
            steps{
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/archit1150/helloworld.git']]])
            }
        }
       stage('Compile'){
            steps{
                echo 'compile start'
                sh label: '',script: 'mvn compile'
                
                echo 'Compile done'
            }
        }
         stage('Test'){
            steps{
                echo 'test start'
                sh label: '', script: 'mvn test'
                echo 'test done'
            }
        }
	stage('Sonar'){
            steps{
                echo 'sonar start'
                sh label: '', script: 'mvn sonar:sonar \
				-Dsonar.projectKey=NAGP \
				-Dsonar.host.url=http://localhost:9000 \
				-Dsonar.login=5513b26d1a66917f3dfbaabd09f5b5c7a8a48ad6'
                echo 'sonar done'    
            }
        }
        stage('Package'){
            steps{
                echo 'package start'
                sh label: '', script: 'mvn clean package'
                echo 'package done'
            }
        }

         stage('docker build'){
        steps{
            echo 'build '
            
        
              sh label: '',script: 'docker build -t helloworld:latest .'
              sh label: '',script: 'docker run -d -p 7100:7100 helloworld:latest '
              
              
            }

 

    }
    
        
    
}
}
