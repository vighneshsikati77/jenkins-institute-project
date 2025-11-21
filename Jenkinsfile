pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-nodejs-app .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh 'docker rm -f nodejs-app || true'
            }
        }

        stage('Run New Container') {
            steps {
                sh 'docker run -d --name nodejs-app -p 3000:3000 jenkins-nodejs-app'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed Successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
