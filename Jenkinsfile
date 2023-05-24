pipeline 
{
    agent any

    stages {
        stage('Build docker image') {
            steps {
                 
                script{
                    sh 'docker build -t krystiandzydzy/memoryCpu:1.0 .'
                }

            }
        }
            stage('Test') {
            steps {
                
            }
        }   
        stage('Deploy') {
            steps {
                script{
                    sh 'docker push krystiandzydzy/memoryCpu:1.0'
                }
            }
        }
    }
    
}
