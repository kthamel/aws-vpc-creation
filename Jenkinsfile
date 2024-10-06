pipeline {
    agent any

    stages {
        stage('Terraform_Version_CHeck') {
            steps {
                echo 'terraform --version'
            }
        }

        stage('Check files') {
            steps {
                echo 'ls -l'
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }

        stage('Terraform Plan') {
            steps {
                echo 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
