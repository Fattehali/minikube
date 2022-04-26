pipeline{
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh "echo staring build the image"
                sh 'docker build -t fattehali/nodejsapp-1.0:latest .'
            }
        }
        stage('Deploy Docker Image') {
            steps {
                sh "echo staring deploy the image"
                sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
                sh 'docker push fattehali/nodejsapp-1.0:latest'
            }
        }
        stage('Remove Docker Image') {
            steps {
                sh "docker rmi -f fattehali/nodejsapp-1.0"    
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                
                    sh "echo staring deploy the image in Kubernetes"
                    
                    sh " kubectl apply -f nodejsapp.yaml" 
                
            }
        }
    
    }
}
