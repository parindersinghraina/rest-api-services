pipeline {
    agent any
    stages {
        stage('Build & Deploy') {
            steps {
                echo '********************** Project Start Building & Deployment ************************'
                sh './gradlew clean build'
                sh 'docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql'
                sh 'cd src/main/java/com/parinder/restapiservice/sql && ls -a && docker exec -i docker-mysql mysql -uroot -proot rest_api_services_db <users.sql'
                sh 'cd ${WORKSPACE} && docker build -f Dockerfile -t rest_api_services_app .'
                sh 'docker run -t --link docker-mysql:mysql -p 10222:10222 rest_api_services_app'
            }
        }
    }
}