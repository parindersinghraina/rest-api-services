pipeline {
    agent none
    stages {
        stage('Build') {
            steps {
                echo 'Building Project'
                sh "./gradlew clean build"
            }
        agent { dockerfile true }
        }
    }
}