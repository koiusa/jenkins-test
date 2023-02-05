pipeline {
  agent any
  stages {
    stage('Git Clone') {
      steps {
        sh 'git clone https://github.com/koiusa/jenkins-test.git'
      }
    }

    stage('Test') {
      steps {
        sh 'python3 app.py'
      }
    }

  }
}