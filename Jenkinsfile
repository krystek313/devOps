pipeline 
{
    agent any
    
    stages {
        stage('Build stage') {
            steps {
                 
                script{
                    //sh 'docker build -t krystiandzydzy/cpumetric:1.1 .'

                }

            }
        }
            stage('Test stage') {
            steps {
                sh'whoami'
                sh 'chmod 777 /home/admine/.docker/config.json'
                sh './tests.sh'
            }
        }   
        stage('Deploy stage') {
            steps {
                script{
                    sh 'docker login -u krystiandzydzy -p dckr_pat_m3CDMNqUUpD1WNUpnA5LPHSfy2o'
                    sh 'docker push krystiandzydzy/cpumetric:1.1'
                    sh 'docker run -d -p 5000:5000 krystiandzydzy/cpumetric:1.1'
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
