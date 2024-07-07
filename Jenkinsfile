pipeline {
    agent any

    // environment {
    //     DISABLE_AUTH = 'true'
    //     DB_ENGINE    = 'sqlite'
    // }

    stages {
        stage('checking containers') {
                                                     //first task
            steps {                                 
                sh '''
                    docker version
                    docker info
                    docker compose version
                    docker compose ps          
                    #docker compose up -d
                '''
            }
        }
                                                    //second task
        stage('run docker compose') {
            steps {
                sh '''
                    if  docker ps --filter "name=mongo-db" | grep -q "mongo-db" && docker ps --filter "name=mongo-express" | grep -q "mongo-express" ; 
                    then
                        echo "Containers are exisiting and running."
                        #Add actions to be performed if the container is running
                    else
                        echo "Containes are not running."
                        # Add actions to be performed if the container is not running
                        docker compose up -d
                    fi
                '''
                }
            }
        }
    }   
