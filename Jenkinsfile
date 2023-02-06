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

    stage('error') {
      parallel {
        stage('error') {
          steps {
            sh '''cd app
echo "hello world"
'''
          }
        }

        stage('Compose') {
          steps {
            sh '''cd jenkins
./compose.sh'''
          }
        }

      }
    }

  }
}