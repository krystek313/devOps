pipeline 
{
    agent any

    environment {
        AWS_SERVER = 'ec2-13-53-119-183.eu-north-1.compute.amazonaws.com'
        AWS_USER   = 'ec2-user'
        APP_VERSION = 'v1.4'
    }

    stages {
        stage('Build stage') {
            steps {                 
                script{
                    sh "docker build -t krystiandzydzy/cpumetric:${APP_VERSION} ."
                    echo "build"
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
                    sh "docker push krystiandzydzy/cpumetric:${APP_VERSION}"
                    echo "release"
                }
            }
        }
        stage('Deploy stage') {
            steps {
                script{                    
                        sshagent(['ec2_connection']) {
                            sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/helloWorldPipe/docker-compose.yaml .env ${AWS_USER}@${AWS_SERVER}:/home/ec2-user/devOps"
                            sh "ssh -o StrictHostKeyChecking=no ${AWS_USER}@${AWS_SERVER} chmod +x /home/ec2-user/devOps/docker-compose.yaml"
                            sh "ssh -o StrictHostKeyChecking=no ${AWS_USER}@${AWS_SERVER} docker-compose -f /home/ec2-user/devOps/docker-compose.yaml up -d"                            
                        }
                        
                    
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
