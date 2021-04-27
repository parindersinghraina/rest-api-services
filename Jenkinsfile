pipeline {
    agent {dockerfile true}
    stages {
        stage('Database Setup') {
            steps {
                echo 'Database Setup'
                sh "docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env="MYSQL_ROOT_PASSWORD=root" --env="MYSQL_PASSWORD=root" --env="MYSQL_DATABASE=rest_api_services_db" mysql"
                sh "docker exec -it docker-mysql bash"
                sh "docker exec -i docker-mysql mysql -uroot -proot rest_api_services_db <src/main/java/com/parinder/restapiservice/sql/users.sql"
            }
        }
       stage('Deploy') {
            steps {
                echo 'Deploy'
                sh "docker build -f Dockerfile -t rest_api_services_app ."
                sh "docker run -t --link docker-mysql:mysql -p 10222:10222 rest_api_services_app"
            }
       }
    }
}