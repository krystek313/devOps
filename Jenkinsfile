pipeline 
{
    agent any

    stages {
        stage('Build docker image') {
            steps {
                 
                script{
                    sh 'docker build -t krystiandzydzy/cpumetric:1.1 .'

                }

            }
        }
            stage('Test') {
            steps {
                sh 'python3 tests.py'
            }
        }   
        stage('Deploy') {
            steps {
                script{
                   // sh 'docker login -u krystiandzydzy -p KrDz2020#'
                   // sh 'docker push krystiandzydzy/cpumetric:1.1'
                    sh 'docker run -d -p 5000:5000 krystiandzydzy/cpumetric:1.1'
                }
            }
        }
        stage("czyszczenie"){
            steps{
                sh 'docker logout'
            }
        }

    }
    
}
