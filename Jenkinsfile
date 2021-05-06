pipeline {
    agent none
    parameters {
            string(
              name: 'USERS',
              defaultValue: '10',
              description: 'Number of USERS to target.')
            string(
              name: 'HATCH-RATE',
              defaultValue: '1',
              description: 'HATCH-RATE to target.')
            string(
              name: 'HOST',
              defaultValue: 'http://localhost:',
              description: 'HOST to target.')
    }
    environment {
           USERS = "${params.USERS}"
           HATCH_RATE = "${params.HATCH-RATE}"
           HOST = "${params.HOST}"
    }
    stages {
        stage('Build') {
            agent { docker 'adoptopenjdk/openjdk11:ubi' }
            steps {
                echo 'Project Build'
                sh "./gradlew clean build"
            }
        }
        stage('Deploy') {
             agent { dockerfile true }
             steps {
                  echo 'Create Container'
                  sh "docker build -f Dockerfile -t rest_api_services_app ."
                  sh "docker run -t --link docker-mysql:mysql -p 10222:10222 rest_api_services_app"
            }
        }
    }
}