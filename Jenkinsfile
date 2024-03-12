def secrets = [
    [path: 'aws-credentials/develop/terraform', engineVersion: 2, secretValues: [
    [envVar: 'aws_access_key_id', vaultKey: 'aws_access_key_id'],
    [envVar: 'aws_secret_access_key', vaultKey: 'aws_secret_access_key'],
    [envVar: 'aws_region', vaultKey: 'aws_region']]],
]
def configuration = [vaultUrl: 'http://m2-fedair.39.local:8200',  vaultCredentialId: 'vault-jenkins-role', engineVersion: 2]

pipeline {
//     environment {
//        AWS_ACCESS_KEY_ID    = "${env.aws_access_key_id}"
//        AWS_SECRET_ACCESS_KEY = "${env.aws_secret_access_key}"
//    }
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
                        terraform init -upgrade
                        '''
                    }
                }  
            }
        }

        stage('Terraform_Format') {
            steps {
                withVault([configuration: configuration, vaultSecrets: secrets]) {
                    dir('vpc_configuration') {
                        sh '''
                        terraform fmt .
                        '''
                    }
                }
                
            }
        }

        stage('Terraform_Validation') {
            steps {
                withVault([configuration: configuration, vaultSecrets: secrets]) {
                    dir('vpc_configuration') {
                        sh '''
                        terraform validate
                        '''
                    }
                }
            }
        }

        stage('Terraform_Plan') {
            steps {
                withVault([configuration: configuration, vaultSecrets: secrets]) {
                    dir('vpc_configuration') {
                        sh '''
                        terraform plan
                        '''
                    }
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
