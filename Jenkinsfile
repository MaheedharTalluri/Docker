pipeline{
 agent any 
 environment {
    registry = "3.136.236.125:8081/docker-local"
    registryCredential = 'docker_creds'
	}
  stages{
    stage (' Build and push Image to JFrog'){
		steps {
			script {
				docker.withRegistry('http://3.136.236.125:8081', registryCredential) 
				{
				/* Push the container to the custom Registry */
				def app =  docker.build registry + "/rhel:latest"
				app.push()
				}
			}
		}	
	stage ('Deploy to kubernetes by Helm') {
		steps {
			script{
				sh ("helm init --client-only --skip-refresh")
				sh ("helm upgrade --install --wait task-app ./helmTaskChart")
				sh "sleep 10"
			}
	 
		}	
	
	}
  } 
}
}