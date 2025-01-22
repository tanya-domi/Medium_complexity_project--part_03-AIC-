pipeline {
    agent any
    environment {
                AWS_ACCESS_KEY_ID = credentials('aws_access_key_id')
                AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
            }
    stages {
        stage ('Packer init') {
            steps {
                    echo 'initializing packer'
                    sh 'packer init aws-ami-AmazonLinux2.pkr.hcl'
            }  
        }
        stage ('Packer fmt') {
            steps {
                script {
                    echo 'formatting packer code'
                    sh 'packer fmt aws-ami-AmazonLinux2.pkr.hcl'
                }
            }  
        }
        stage ('Packer validate') {
            steps {
                script {
                    echo 'validating packer code'
                    sh 'packer validate aws-ami-AmazonLinux2.pkr.hcl'
                }
            }  
        }
        stage ('packer build ami') {
            steps {
                    echo 'building ami'
                    sh 'packer build aws-ami-AmazonLinux2.pkr.hcl'
            }  
        }
        
    }
}
