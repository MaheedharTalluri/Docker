podTemplate(label: label, containers: [
  containerTemplate(name: 'docker', image: 'docker', command: 'cat', ttyEnabled: true),
  containerTemplate(name: 'kubectl', image: 'lachlanevenson/k8s-kubectl:v1.8.8', command: 'cat', ttyEnabled: true),
  containerTemplate(name: 'helm', image: 'lachlanevenson/k8s-helm:latest', command: 'cat', ttyEnabled: true)
],
volumes: [
  hostPathVolume(mountPath: '/var/run/docker.sock', hostPath: '/var/run/docker.sock')
]) {
   stage('Create Docker images') {
      container('docker') {
        # withCredentials([[$class: 'UsernamePasswordMultiBinding',
        #   credentialsId: 'dockerhub',
        #   usernameVariable: 'DOCKER_HUB_USER',
        #   passwordVariable: 'DOCKER_HUB_PASSWORD']])
          {
          sh """
            #docker login -u ${DOCKER_HUB_USER} -p ${DOCKER_HUB_PASSWORD}
            docker build -t namespace/my-image:latest .
            #docker push namespace/my-image:${gitCommit}
            """
        }
      }
    }


   }
