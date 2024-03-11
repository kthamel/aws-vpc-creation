pipeline {
    agent {label 'ansible'}
    stages {
        stage('Check_Dependencies'){
            steps {
                sh '''
                    terraform --version
                '''
            }
        }
        
        stage('Terraform_Initialization') {
            steps {
                sh '''
                    // terraform init
                    terraform --version 
                '''
            }
        }

        stage('Terraform_Format') {
            steps {
                sh '''
                    // terraform fmt .
                    terraform --version
                '''
            }
        }

        stage('Terraform_Validation') {
            steps {
                sh '''
                    // terraform validate
                    terraform --version
                '''
            }
        }

        stage('Terraform_Plan') {
            steps {
                sh '''
                    // terraform plan
                    terraform --version
                '''
            }
        }

        stage('Terraform_Apply') {
            steps {
                input id: 'InputMsg', message: 'Are you sure to do that?'
                sh '''
                    // terraform apply
                    terraform --version
                '''
            }
        }
    }
}
