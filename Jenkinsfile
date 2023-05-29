pipeline 
{
    agent any
    
    stages {
        stage('Build stage') {
            steps {                 
                script{
                    sh 'docker build -t krystiandzydzy/cpumetric:1.2 .'
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
                    sh 'docker push krystiandzydzy/cpumetric:1.2'
                }
            }
        }
        stage('Deploy stage') {
            steps {
                script{
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
