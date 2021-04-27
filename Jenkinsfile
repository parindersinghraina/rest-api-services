pipeline {
    agent {dockerfile true}
    stages {
        stage('Build') {
            steps {
                echo 'Building Project'
                sh "chmod -R 777 src/main/java/com/parinder/restapiservice"
                sh "cd src/main/java/com/parinder/restapiservice/sql/"
                sh "ls -al"
                sh "cd build/libs"
                sh "ls -al"
            }
        }
       stage('Deploy') {
            steps {
                echo 'Deploy'
            }
       }
    }
}