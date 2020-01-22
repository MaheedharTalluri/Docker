
pipeline{
 agent any 
 environment {
    registry = "18.222.49.120:8081/docker-local"
    registryCredential = 'docker_creds'
	}	
  stages{
    stage (' Build and push Image to JFrog'){
		steps {
			script {
				docker.withRegistry('http://18.222.49.120:8081', registryCredential) 
				{
				/* Push the container to the custom Registry */
				def app =  docker.build registry + "/rhel:latest"
				app.push()
				}
			}
		}
	}		
	stage ('Deploy to kubernetes by Helm') {
		agent {
			docker {image 'alpine/helm'}
		}
		steps {
			sh helm list
		}
	}
  } 
