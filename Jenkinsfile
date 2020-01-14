pipeline{
 agent any 
  stages{
    stage ('Create Docker Image' ){
     steps{
     sh 'sudo docker build -t rhel .'
     sh 'sudo docker tag rhel rhel:1.0' 
      }
     }
    /*stage ('Storing Image in JFrog'){
     steps {
       
        **}}*/

 }
}