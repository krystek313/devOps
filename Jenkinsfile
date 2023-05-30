pipeline 
{
    agent any
    
    stages {
        stage('Build stage') {
            steps {                 
                script{
                    //sh 'docker build -t krystiandzydzy/cpumetric:1.3 .'
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
                    //sh 'docker push krystiandzydzy/cpumetric:1.3'
                    echo "release"
                }
            }
        }
        stage('Deploy stage') {
            steps {
                script{                    
                        sshagent(['ec2_connection']) {
                            sh "scp -o StrictHostKeyChecking=no /var/lib/jenkins/workspace/helloWorldPipe/docker-compose.yaml ec2-user@ec2-13-48-193-52.eu-north-1.compute.amazonaws.com:/home/ec2-user/devOps"
                            sh "ssh -o StrictHostKeyChecking=no ec2-user@ec2-13-48-193-52.eu-north-1.compute.amazonaws.com chmod +x /home/ec2-user/devOps/docker-compose.yaml"
                            sh "ssh -o StrictHostKeyChecking=no ec2-user@ec2-13-48-193-52.eu-north-1.compute.amazonaws.com docker-compose -f /home/ec2-user/devOps/docker-compose.yaml up -d"                            
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
