pipeline {
    agent any    
    parameters {
        choice(name: 'CHOICES', choices: ['dev', 'prod'], description: 'choose environment')
        //text(name: 'BIOGRAPHY', defaultValue: '', description: 'Enter some information about the person')
       // booleanParam(name: 'TOGGLE', defaultValue: true, description: 'Toggle this value')
        // choice(name: 'CHOICE', choices: ['One', 'Two', 'Three'], description: 'Pick something')
        // password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'Enter a password')
    }
    stages {
        stage('terraform init') {
            steps {
                sh "terrafile -f env-${ENV}/Terrafile "  
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
                sh "terraform apply -var-file=env-${ENV}/${ENV}.tfvars "  
                
            }
        }
    }
    
}


// Environment variables for SSH UserName & Password
// SSH_CRED_USR
// SSH_CRED_PSW
// Added some commits 
// Demonstrating the PollSCM  : 19 
