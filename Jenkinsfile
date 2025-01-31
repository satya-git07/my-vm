pipeline {
    agent any
    
    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-sa') 
    }

    stages {
        stage('Hello') {
            steps {
                git branch: 'main', url: 'https://github.com/satya-git07/file.git' 
            }
        }
        stage('Hello2') {
            steps {
                sh "terraform init" 
                sh "terraform apply -auto-approve"
            }
        }
    }
}
