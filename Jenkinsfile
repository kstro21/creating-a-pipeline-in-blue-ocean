node {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'node --version' 
            }
        }
        stage('Run image') { 
            container('docker') {
				sh "docker --version"
                sh 'dir .' 
            }
        }
    }
}