pipeline {
    agent {label 'ansible'}
    stages {
        withVault(configuration: [disableChildPoliciesOverride: false, engineVersion: 2, skipSslVerification: true, timeout: 60, vaultUrl: 'http://m2-fedair.39.local:8200'], vaultSecrets: [[path: 'aws-credentials/develop/aws_access_key_id', secretValues: [[vaultKey: 'aws_access_key_id']]]]){
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
                            terraform init
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
}