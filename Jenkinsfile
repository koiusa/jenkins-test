pipeline {
  agent none

  stages {
    stage('Build') {
      agent {
        docker {
          image 'python:3.6'
          // isUnix() をここでは使えないので、argsはscript内で設定
        }
      }
      steps {
        script {
          // ここは node/docker 内なので isUnix() が使える！
          if (isUnix()) {
            sh '''
              echo "Building on Linux"
              uname -a
              cat /etc/*release
              apt-get update && apt-get install -y sudo
              cd app
              ls
              pip install -r requirements.txt
            '''
          } else {
            bat '''
              echo Building on Windows
              ver
              cd app
              dir
              python -m pip install -r requirements.txt
            '''
          }
        }
      }
    }

    stage('Test') {
      parallel {
        stage('App') {
          agent {
            docker { image 'python:3.6' }
          }
          steps {
            script {
              if (isUnix()) {
                sh '''
                  cd app
                  ls
                  python3 ./app.py
                '''
              } else {
                bat '''
                  cd app
                  dir
                  python app.py
                '''
              }
            }
          }
        }

        stage('HelloWorld') {
          agent {
            docker { image 'python:3.6' }
          }
          steps {
            script {
              if (isUnix()) {
                sh '''
                  cd app
                  ls
                  python3 ./helloworld.py
                '''
              } else {
                bat '''
                  cd app
                  dir
                  python helloworld.py
                '''
              }
            }
          }
        }
      }
    }

    stage('Deploy') {
      steps {
        script {
          if (isUnix()) {
            sh '''
              echo "Deploy on Linux"
              echo ${BUILD_URL}
              echo ${JOB_NAME}
            '''
          } else {
            bat '''
              echo Deploy on Windows
              echo %BUILD_URL%
              echo %JOB_NAME%
            '''
          }
        }
      }
    }
  }

  post {
    failure {
      discordSend(
        description: BUILD_RESULT,
        footer: currentBuild.currentResult,
        webhookURL: WEBHOOK,
        successful: false
      )
    }
    success {
      discordSend(
        description: BUILD_RESULT,
        footer: currentBuild.currentResult,
        webhookURL: WEBHOOK,
        successful: true
      )
    }
  }
}
