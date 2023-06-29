@Library('my-shared-library') _
pipeline{

    agent any

    parameters{

        choice(name: 'action', choices: 'create\ndelete', description: 'Choose create/Destroy')
    }

    stages{

        stage('Git Checkout') {
            
            when { expression { param.action == 'create' }}
            steps{
            gitCheckout(
                branch: "main",
                url: "https://github.com/HemanthGowda01/java-app-demo-cicd.git"

                    )
                    
                }
            }

            
        stage('Unit Test Maven') {

        when { expression { param.action == 'create' }}

            steps{
                script{
                    mvnTest()
                }

            }
                    
                }
            stage('Integration Test Maven') {

            when { expression { param.action == 'create' } }

            steps{
                script{
                    mvnIntegrationTest()
                }

            }
                    
                }
            stage('sonar static code analysis: Sonarqube') {

            when { expression { param.action == 'create' } }

            steps{
                script{
                    staticCodeAnalysis()
                }

            }
                    
                }
            } 
        }