pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'adoptopenjdk/openjdk11:ubi' }
            steps {
                echo 'Building Project'
                sh "./gradlew clean build"
            }
        }
       stage('Deploy') {
            agent { dockerfile true }
            steps {
                echo 'Deploy'
            }
       }
    }
}