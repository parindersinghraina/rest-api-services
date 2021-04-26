pipeline {
    agent {dockerfile true}
    stages {
        stage('Build') {
            steps {
                echo 'Building Project'
                sh "./gradlew clean build"
            }
        }
       stage('Deploy') {
            steps {
                echo 'Deploy'
            }
       }
    }
}