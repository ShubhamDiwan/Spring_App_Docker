pipeline {
    agent any
    stages {
        stage('Build Application') {
            steps {
                sh 'mvn -f pom.xml clean package'
            }
            post {
                success {
                    echo "Now Archiving the Artifacts...."
                    archiveArtifacts artifacts: '**/*.war'
                }
            }
        }
        stage('Build and create docker image'){
            steps{
                sh "docker build . -t springbootdockerapp:${env.BUILD_ID}"
            }
        }
    }
}
