pipeline {
    agent none
    stages {
        stage('Build') {
            agent { docker 'openjdk:8-jre' }
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