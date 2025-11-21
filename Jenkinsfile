pipeline {
  agent any

  stages{
    stage('Checkout Code'){
          steps{
            checkout scm
          }
    }

     stage('Install all the dependencies'){
       steps{
         sh 'npm install'
       }
     }

    stage('Start the Application'){
      steps{
        sh 'nohup npm start &'
      }
    }
  }

  post {
    success{
      echo 'Pipeline completed Successfully !'
    }
    failure{
      echo 'Pipeline failed !'
    }
  }
}
