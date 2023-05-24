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
                echo 'teraz lepiej ?'
            }
        }   
        stage('Deploy') {
            steps {
                script{
                    sh 'docker push krystiandzydzy/memorycpu:1.0'
                }
            }
        }
    }
    
}
