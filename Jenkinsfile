pipeline {
    agent {
        dockerfile {
            filename 'Dockerfile'
        }
    }
    stages {
        stage('Container Setup') {
            steps {
                container('docker-mysql') {
                    script {
                        echo '********************** Link with container ************************'
                        sh 'cd src/main/java/com/parinder/restapiservice/sql && docker exec -i docker-mysql mysql -uroot -proot rest_api_services_db < users.sql'
                    }
                }
            }
        }
    }
}