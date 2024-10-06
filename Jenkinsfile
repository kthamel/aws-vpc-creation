pipeline {
    agent any

    stages {
        stage('Terraform version') {
            steps {
                sh 'terraform --version'
            }
        }

        stage('Check files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Terraform init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }

        stage('Terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Terraform apply') {
            steps {
                echo 'Hello World'
            }
        }
    }
}
