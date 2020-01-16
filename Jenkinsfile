pipeline{
 agent any 
 environment {
    registry = "52.14.156.42:8081/docker-local"
    registryCredential = 'docker_creds'
}
  stages{
    stage ('Create Docker Image' ){
     steps{
     /*sh 'sudo docker build -t rhel .'
     sh 'sudo docker tag rhel 3.15.143.62:8081/docker-local/rhel:latest'*/
	    script{
	        docker.build registry + "/rhel:latest"
		//def app = docker.build ( "rhel" )
      }}
     }
    stage ('Storing Image in JFrog'){
     steps {
	  script{
       docker.withRegistry(registry, registryCredential )
	   dockerImage.push("")
}}}


 }

}
