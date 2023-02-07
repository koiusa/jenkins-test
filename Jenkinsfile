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
#pip install -r requirements.txt'''
      }
    }

    stage('error') {
      parallel {
        stage('error') {
          steps {
            sh '''cd app
ls
python3 ./app.py
'''
          }
        }

        stage('Compose') {
          steps {
            sh '''cd app
python3 ./helloworld.sh'''
          }
        }

      }
    }

  }
}