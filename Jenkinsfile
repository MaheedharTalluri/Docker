pipeline{
 agent any 
 environment {
    registry = "52.14.156.42:8081/docker-local"
    registryCredential = 'docker_creds'
    uri = "52.14.156.42:8081"
}
  stages{
    stage ('Create Docker Image' ){
     steps{
     /*sh 'sudo docker build -t rhel .'
     sh 'sudo docker tag rhel 3.15.143.62:8081/docker-local/rhel:latest'*/
	    script{
	       def app =  docker.build registry + "/rhel:latest"
		//def app = docker.build ( "rhel" )
      }}
     }
    stage ('Storing Image in JFrog'){
     steps {
	  script{

    	docker.withRegistry('52.14.156.42:8081', registryCredential ) {

        /* Push the container to the custom Registry */
        app.push()
    
}


       	   //docker.withRegistry(registry, registryCredential)
	   //app.push()
	  //dockerImage.push("")
	 //def rtDocker = Artifactory.docker credentialsId: registryCredential
 
	// Push a docker image to Artifactory (here we're pushing hello-world:latest). The push method also expects
	// Artifactory repository name:
	//def buildInfo = rtDocker.push(app, docker-local)
	// Publish the build-info to Artifactory:
	//server.publishBuildInfo buildInfo
	

}}}



 }

}
