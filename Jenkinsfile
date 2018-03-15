pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'node --version' 
            }
        }
        stage('Run image') { 
            steps('docker') {
				sh "docker --version"
                sh 'dir .' 
            }
        }
    }
}