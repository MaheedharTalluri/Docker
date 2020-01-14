pipeline{
 agent any 
  stages{
    stage ('Create Docker Image' ){
     steps{
     sh 'docker build -t rhel .'
     sh 'docker tag rhel rhel:1.0' 
      }
     }
    stage ('Storing Image in JFrog'){
     steps {
       
      }}

 }
}