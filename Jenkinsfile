pipeline {
  agent any
  stages {
    stage('Git Clone') {
      steps {
        sh '''echo "building"
cd app
#pip install -r requirements.txt'''
      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh '''echo "testing"
cd app
python3 app.py'''
          }
        }

        stage('') {
          steps {
            sh 'python3 helloworld.py'
          }
        }

      }
    }

  }
}