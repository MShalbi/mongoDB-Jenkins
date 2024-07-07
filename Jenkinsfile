pipeline {
    agent any

    stages {
        stage('check env') {
            steps {
                sh '''
                    docker version
                    docker info
                    docker compose version
                    docker compose ps
                '''
            }
        }
        stage('run docker compose') {
            steps {
                sh '''
                    docker compose up -d
                    docker ps
                '''
                }
            }
        }
    }   