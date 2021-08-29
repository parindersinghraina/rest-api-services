pipeline {
    agent Dockerfile
    stages {
        stage('Build') {
            steps {
                script {
                    echo '********************** Project Build ************************'
                    sh './gradlew clean build'
                    sh 'docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql'
                    }
            }
        }
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