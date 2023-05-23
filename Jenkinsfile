pipeline 
{
    agent any

    stages {
        stage('Build docker image') {
            steps {
                echo 'I am building project right now '
                script{
                    sh 'docker build -t testowy/tag:1.0 .'
                }

            }
        }
            stage('Test') {
            steps {
                echo 'I am testing project right now '
            }
        }   
        stage('Deploy') {
            steps {
                echo 'I am deploying project right now '
            }
        }
    }
    
}
