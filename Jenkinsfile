pipeline{
 agent any 
 environment {
    registry = "18.218.198.252:8081/docker-local"
    registryCredential = 'docker_creds'
    uri = "52.14.156.42:8081"
}
  stages{
     stage (' Build and push Image to JFrog'){
     steps {
	  script{

    	docker.withRegistry('http://18.218.198.252:8081', registryCredential ) 

{
        /* Push the container to the custom Registry */
        def app =  docker.build registry + "/rhel:latest"
	app.push()
    

}

}}}
}

}
