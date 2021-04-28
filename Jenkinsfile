pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'adoptopenjdk/openjdk11:ubi' }
            steps {
                echo 'Project Build'
                sh "./gradlew clean build"
            }
        }
        stage('Build & Deploy') {
             agent { dockerfile true }
             steps {
                  echo 'Create Container'
                  sh "docker build -f Dockerfile -t rest_api_services_app ."
                  sh "docker run -t --link docker-mysql:mysql -p 10222:10222 rest_api_services_app"
            }
        }
    }
}