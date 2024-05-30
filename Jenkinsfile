pipeline {
    agent any

    stages {
        stage('git checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Dipchand20/Python_application.git'
            }
        }
        
        
        stage('Build and Push Docker Image') {
          environment {
            DOCKER_IMAGE = "dipchand20/dipchand:${BUILD_NUMBER}"
            REGISTRY_CREDENTIALS = credentials('dockerHubCreadetials')
          }
          steps {
            script {
                sh ' docker build -t ${DOCKER_IMAGE} .'
                def dockerImage = docker.image("${DOCKER_IMAGE}")
                docker.withRegistry('https://index.docker.io/v1/', "dockerHubCreadetials") {
                    dockerImage.push()
                echo "dipchand"
                }
            }
          }
        }    
        
    }
    
    
}
