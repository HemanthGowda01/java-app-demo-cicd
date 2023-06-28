pipeline{
    agent any

    stages{

        stage('Git Checkout') {

            steps{

                script {

                    git branch: 'main', url: 'https://github.com/HemanthGowda01/mrdevops_java_app.git'
                    
                }
            }
        }
    }
}