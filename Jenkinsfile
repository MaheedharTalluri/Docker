pipeline{
 agent any 
  stages{
    stage ('Create Docker Image' ){
     steps{
     /*sh 'sudo docker build -t rhel .'
     sh 'sudo docker tag rhel 3.15.143.62:8081/docker-local/rhel:latest'*/
	    script{
		def app = docker.build ( "rhel" )
      }}
     }
    stage ('Storing Image in JFrog'){
     steps {
	  script{
       docker.withRegistry('http://3.15.143.62:8081/docker-local' , 'docker_creds')
	   app.push("latest")
        }}}

 }
}