pipeline 
{
    agent any

    stages {
        stage('Build docker image') {
            steps {
                 
                script{
                    sh 'docker build -t krystiandzydzy/memorycpu:1.0 .'
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
                    sh 'docker login -u krystiandzydzy -p KrDz2020#'
                    sh 'docker push krystiandzydzy/memorycpu:1.0'
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
