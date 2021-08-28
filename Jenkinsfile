pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo '********************** Project Start Building ************************'
                sh "./gradlew clean build"
                sh 'docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql'
            }
        }
    }
}