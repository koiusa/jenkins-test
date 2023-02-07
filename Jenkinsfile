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
pip install -r requirements.txt'''
      }
    }

    stage('error') {
      parallel {
        stage('Python') {
          steps {
            sh '''cd app
ls
python3 ./app.py
'''
          }
        }

        stage('python') {
          steps {
            sh '''cd app
ls
python3 ./helloworld.py'''
          }
        }

      }
    }

  }
}