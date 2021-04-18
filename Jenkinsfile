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
                sh ""
          	}
        } catch (err) {
            currentBuild.result = 'FAILED'
            throw err
        }
    }
