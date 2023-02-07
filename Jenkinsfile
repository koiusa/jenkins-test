pipeline {
  agent {
    docker {
      image 'python:3.6'
      args '-u root:sudo'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh '''echo "building"
uname
cat /etc/*release

apt install sudo
cd app
ls
sudo pip install -r requirements.txt'''
      }
    }

    stage('error') {
      parallel {
        stage('Test') {
          steps {
            sh '''cd app
ls
python3 ./app.py
'''
          }
        }

        stage('Sample') {
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