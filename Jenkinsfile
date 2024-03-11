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
                dir('vpc_configuration') {
                    sh '''
                    terraform --version
                    '''
                }
            }
        }

        stage('Terraform_Format') {
            steps {
                dir('vpc_configuration') {
                    sh '''
                    terraform --version
                    '''
                }
            }
        }

        stage('Terraform_Validation') {
            steps {
                dir('vpc_configuration') {
                    sh '''
                    terraform --version
                    '''
                }
            }
        }

        stage('Terraform_Plan') {
            steps {
                dir('vpc_configuration') {
                    sh '''
                    terraform --version
                    '''
                }
            }
        }

        stage('Terraform_Apply') {
            steps {
                input id: 'InputMsg', message: 'Are you sure to do that?'
                    dir('vpc_configuration') {
                        sh '''
                        terraform --version
                    '''
                }
            }
        }
    }
}
