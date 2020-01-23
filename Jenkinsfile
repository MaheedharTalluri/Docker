
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
	}
     stage ('Deploy charts using helm') {
           steps {
           //sh 'sudo -H -u ec2-user bash -c "helm repo add stable https://kubernetes-charts.storage.googleapis.com"'
           sh 'helm install leo stable/nginx-ingress'
           sh 'helm list'
           }

	}
  }

}
