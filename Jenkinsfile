pipeline {
    agent { dockerfile true }
    stages {
        stage('Build') { 
            steps {
                sh 'node --version' 
				sh 'docker --version'
            }
        }
        stage('Run image') { 
            steps {
                sh 'dir .' 
            }
        }
    }
}