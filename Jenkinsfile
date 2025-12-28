pipeline {
    agent any

    environment {
        IMAGE_NAME = "rajeshwarisiddipeta/ruby-experiments"
        IMAGE_TAG = "v1"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

         stage('Push to Docker Hub') {
                 steps {
                     echo "Logging in and pushing to Docker Hub..."
                     withCredentials([usernamePassword(credentialsId: 'dockerhub', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
                         sh 'echo $PASS | docker login -u $USER --password-stdin'
                         sh 'docker push $IMAGE_NAME:$IMAGE_TAG'
                     }
                 }
             }

       stage('Run Container (Test)') {
           steps {
               sh 'docker run --rm -e NAME=Glen -e AGE=25 -e CITY=Ogden $IMAGE_NAME:$IMAGE_TAG'
           }
       }
    }
}
