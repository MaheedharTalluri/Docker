pipeline {
    agent {
        docker { image 'alpine/helm' }
    }
    stages {
        stage('Deploy') {
            steps {
                sh 'helm list'
            }
        }
    }
}