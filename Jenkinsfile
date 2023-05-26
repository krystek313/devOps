pipeline 
{
    agent any
    
    stages {
        stage('Build stage') {
            steps {
                 
                script{
                    sh 'docker build -t krystiandzydzy/cpumetric:1.2 .'
                    //echo "robie build"
                }

            }
        }
            stage('Test stage') {
            steps {
               
                sh './tests.sh'
            }
        }   
        stage('Deploy stage') {
            steps {
                script{
                    //sh 'docker login -u krystiandzydzy -p dckr_pat_m3CDMNqUUpD1WNUpnA5LPHSfy2o'
                    sh 'docker push krystiandzydzy/cpumetric:1.2'
                    sh 'docker run -d -p 5000:5000 krystiandzydzy/cpumetric:1.2'
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
