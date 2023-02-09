pipeline {
  agent {
    docker {
      image 'python:3.6'
      args '-u root:sudo'
    }

  }
try{
  stages {
    stage('Build') {
      steps {
        sh '''echo "building"
uname
cat /etc/*release

apt-get update && apt-get install sudo
cd app
ls
sudo pip install -r requirements.txt'''
      }
    }

    stage('Test') {
      parallel {
        stage('App') {
          steps {
            sh '''cd app
ls
python3 ./app.py
'''
          }
        }

        stage('HelloWorld') {
          steps {
            sh '''cd app
ls
python3 ./helloworld.py'''
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        sh '''echo "Deploy" 
echo ${BUILD_URL}
echo ${JOB_NAME}
'''
        discordSend(description: BUILD_RESULT, footer: currentBuild.currentResult, webhookURL: WEBHOOK, successful: true)
      }
    }

  }
}
  catch(error) {
      stage('Error') {
      steps {
        discordSend(description: BUILD_RESULT, footer: currentBuild.currentResult, webhookURL: WEBHOOK, successful: false)
      }
    }
          }
            finally {
            echo '成功時も失敗時も実行されます'
          }
  environment {
    PROJECT_NAME = '$JOB_NAME'
  }
}
