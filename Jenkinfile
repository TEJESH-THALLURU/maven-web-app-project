pipeline {
    agent any

    tools {
        maven 'maven'
    }

    triggers {
        pollSCM('* * * * *')
    }

    stages {
        stage('notify')
        {
            steps{
        notifyBuild('STARTED')
        }}
        stage('git checkout') {
            steps {
                git(branch: 'dev', url: 'https://github.com/TEJESH-THALLURU/maven-web-app-project.git')
            }
        }

        stage('build') {
            steps {
                sh "mvn clean package"
            }
        }

        stage('compile') {
            steps {
                sh "mvn compile"
            }
        }

        stage('sonar') {
            steps {
                sh "mvn sonar:sonar"
            }
        }

        stage('nexus') {
            steps {
                sh "mvn deploy"
            }
        }

        stage('Deploy to tomcat') {
            steps {
                sh """
                curl -u kk:password \
                --upload-file /var/lib/jenkins/workspace/jio-declarative-pl/target/maven-web-application.war \
                "http://15.207.114.222:9090/manager/text/deploy?path=/maven-web-application&update=true"
                """
            }
        }
    }

    post {
        success {
            script {
                notifyBuild(currentBuild.result)
            }
        }

        failure {
            script {
                notifyBuild(currentBuild.result)
            }
        }
    }
}

// Notification method
def notifyBuild(String buildStatus = 'STARTED') {
    buildStatus = buildStatus ?: 'SUCCESS'

    def colorCode
    def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
    def summary = "${subject} (${env.BUILD_URL})"

    switch (buildStatus) {
        case 'STARTED':
            colorCode = '#FFFF00' // Yellow
            break
        case 'SUCCESS':
            colorCode = '#00FF00' // Green
            break
        default:
            colorCode = '#FF0000' // Red
    }

    slackSend(color: colorCode, message: summary ,channel: '#jio-scripted')
    slackSend(color: colorCode, message: summary ,channel: '#jio-project')
}
