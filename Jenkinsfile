def secrets = [
    [path: 'aws-credentials/develop', engineVersion: 2, secretValues: [
    [envVar: 'aws_access_key_id', vaultKey: 'private-token'],
    [envVar: 'aws_secret_access_key', vaultKey: 'public-token'],
    [envVar: 'aws_region', vaultKey: 'api-key']]],
]
def configuration = [vaultUrl: 'http://m2-fedair.39.local:8200',  vaultCredentialId: 'vault-jenkins-role', engineVersion: 2]

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
                withVault([configuration: configuration, vaultSecrets: secrets]) {
                    dir('vpc_configuration') {
                        sh '''
                        terraform init
                        '''
                    }
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
