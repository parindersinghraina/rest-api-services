    node {
     	// Clean workspace before doing anything
        deleteDir()

        try {
            stage ('Clone') {
            	checkout scm
            }
            stage ('Database Container') {
                sh "docker run --platform linux/amd64 -d -p 6033:3306 --name=docker-mysql --env='MYSQL_ROOT_PASSWORD=root' --env='MYSQL_PASSWORD=root' --env='MYSQL_DATABASE=rest_api_services_db' mysql"
                sh "chmod -R 777 src/main/java/com/parinder/restapiservice"
                sh "cd src/main/java/com/parinder/restapiservice/sql/"
                sh "ls -a"
            }
            stage ('Build') {
            	sh "./gradlew clean build"
            	sh "docker build --build-arg JAR_FILE=build/libs/*.jar -t rest/rest-api-services ."
            }
          	stage ('Deploy') {
                sh "ls -a"
          	}
        } catch (err) {
            currentBuild.result = 'FAILED'
            throw err
        }
    }
