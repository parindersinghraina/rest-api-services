pipeline {
    agent none
    stages {
        stage('Build') {
            agent { dockerfile false }
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