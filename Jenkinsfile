pipeline {
    agent any

    environment {
        IMAGE_NAME = "raji/ruby-experiments"
        IMAGE_TAG = "v1"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME:$IMAGE_TAG .'
            }
        }

       stage('Run Container (Test)') {
           steps {
               sh 'docker run --rm -e NAME=Glen -e AGE=25 -e CITY=Ogden $IMAGE_NAME:$IMAGE_TAG'
           }
       }
    }
}
