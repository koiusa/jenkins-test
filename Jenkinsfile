pipeline {
  agent any
  stages {
    stage('Git Clone') {
      steps {
        sh '''cd app
pip install -r requirements.txt'''
      }
    }

    stage('Test') {
      steps {
        sh '''cd app
python3 app.py'''
      }
    }

  }
}