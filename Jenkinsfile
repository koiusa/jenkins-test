pipeline {
  agent {
    docker {
      image 'python:3.6'
    }

  }
  stages {
    stage('Git Clone') {
      steps {
        sh '''echo "building"
cd app
#pip install -r requirements.txt'''
      }
    }

    stage('error') {
      parallel {
        stage('error') {
          steps {
            sh '''cd app
app.py
'''
          }
        }

        stage('Compose') {
          steps {
            sh '''cd app
./helloworld.sh'''
          }
        }

      }
    }

  }
}