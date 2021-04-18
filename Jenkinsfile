    node {
     	// Clean workspace before doing anything
        deleteDir()

        try {
            stage ('Clone') {
            	checkout scm
            }
            stage ('Build') {
            	sh "./gradlew clean build"
            }
            stage ('Tests') {
    	        parallel 'unit': {
    	            sh "./gradlew test"
    	        }
            }
          	stage ('Deploy') {
                sh "chmod -R 777 build/libs"
                sh "java -jar build/libs/rest-api-services-0.0.1-SNAPSHOT.jar"
          	}
        } catch (err) {
            currentBuild.result = 'FAILED'
            throw err
        }
    }
