pipeline{
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh "echo staring build the image"
                script {
                    sh 'docker build -t fattehali/nodejs:latest .'
                }
            }
        }
        stage('Deploy Docker Image') {
            steps {
                sh "echo staring deploy the image"
                script {
                     sh 'docker login -u fattehali -p Asad@1234'
                 }  
               sh 'docker push fattehali/nodejs:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sshagent(['k8s']) {
    

                
                    sh "echo staring deploy the image"
//                     sh "pwd"
                    sh "docker rmi -f fattehali/nodejs"      
                    sh "kubectl apply -f nodejsapp.yaml" 
                    
                }
            }
        }
    
    }
}
