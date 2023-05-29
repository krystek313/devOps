pipeline 
{
    agent any
    
    stages {
        stage('Build stage') {
            steps {                 
                script{
                    sh 'docker build -t krystiandzydzy/cpumetric:1.3 .'
                }

            }
        }
            stage('Test stage') {
            steps {               
                sh './tests.sh'
            }
        }    
        stage('Release stage') {
            steps {
                script{
                    sh 'docker push krystiandzydzy/cpumetric:1.3'
                }
            }
        }
        stage('Deploy stage') {
            steps {
                script{
                    sh 'ssh -i "kDCpuMetric.pem" ec2-user@ec2-16-170-201-13.eu-north-1.compute.amazonaws.com'
                    sh 'git fetch'
                    sh 'git pull origin master'
                    sh 'docker compose up -d'
                }
            }
        }
        stage("Cleaning stage"){
            steps{
                sh 'docker logout'
            }
        }

    }
    
}
