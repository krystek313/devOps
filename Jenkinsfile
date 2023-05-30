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
                    sshagent(['ec2_connector']) {
                        // some block
                        sh "chmod 400 kDCpuMetric.pem"
                        sh "ssh -tt ec2-user@ec2-13-48-193-52.eu-north-1.compute.amazonaws.com mkdir test"
                        sh "ssh -o StrictHostKeyChecking=no ec2-user@ec2-13-48-193-52.eu-north-1.compute.amazonaws.com uname -a"
                    }
                    /*sh 'ssh -tt -i "kDCpuMetric.pem" ec2-user@ec2-16-170-201-13.eu-north-1.compute.amazonaws.com '
                    sh 'git fetch'
                    sh 'git pull origin master'
                    sh 'docker compose up -d'
                    */
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
