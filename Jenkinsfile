pipeline {
    agent any    
    parameters {
        choice(name: 'ENV', choice: ['dev', 'prod'], description: 'choose environment')
        choice(name: 'ACTION', choice: ['apply', 'destroy'], description: 'choose action')
        }
    stages {
        stage('terraform init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"  
                sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('terraform plan') {
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"  
                
            }
        }
        stage('terraform Apply') {
            steps {
                sh "terraform ${ACTION} -var-file=env-${ENV}/${ENV}.tfvars -auto-approve"  
                
            }
        }
    }
    
}


// Environment variables for SSH UserName & Password
// SSH_CRED_USR
// SSH_CRED_PSW
// Added some commits 
// Demonstrating the PollSCM  : 19 
