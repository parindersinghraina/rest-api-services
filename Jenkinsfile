pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
                echo '********************** Project Start Building ************************'
                sh "./gradlew clean build"
            }
        }
    }
}