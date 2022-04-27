pipeline{
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                sh "echo staring build the image"
     //           script {
     //               sh 'docker build -t fattehali/nodejs:latest .'
     //           }
            }
        }
        stage('Deploy Docker Image') {
            steps {
                sh "echo staring deploy the image"
//                 script {
//                     sh 'docker login -u fattehali -p Asad@123'
//                 }  
//                sh 'docker push fattehali/nodejs:latest'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sshagent(['k8s']) {
                    sh "echo staring deploy the image"
                    sh "ssh ubuntu@$DEPLOY_IP docker rmi -f fattehali/nodejs"
//                     sh "scp -o StrictHostKeyChecking=no nodejsapp.yaml ubuntu@$DEPLOY_IP:/home/ubuntu/"
//                      script {
//                               sh "ssh ubuntu@$DEPLOY_IP kubectl apply -f nodejsapp.yaml" 
//                      }
                }
            }
        }
    
    }
}
