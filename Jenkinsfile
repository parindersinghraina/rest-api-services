pipeline {
    agent any
    stages {
        stage('Build & Deploy') {
            steps {
                    script {
                        echo '********************** Project Start Build & Deploy ************************'
                        sh './gradlew clean build'
                        sh 'docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql'
                        sh 'cd src/main/java/com/parinder/restapiservice/sql && docker exec -i docker-mysql mysql -h127.0.0.1 -P3306 -uroot -proot rest_api_services_db < users.sql  && cd ${WORKSPACE} && docker build -f Dockerfile -t rest_api_services_app . && docker run -t -d --link docker-mysql:mysql -p 10222:10222 rest_api_services_app && docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q) && docker rmi $(docker images -a -q)'
                    }
            }
        }
    }
}