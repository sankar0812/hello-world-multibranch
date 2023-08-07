pipeline{
  agent any
  environment{
    PATH= "/opt/apache-maven-3.9.2/bin:$PATH"
  }
  stages{
    stage("SCM checkout"){
      steps{
        git "https://github.com/sankar0812/hello-world-multibranch.git"
      }
    }
    stage("maven build code"){
      steps{
        sh "mvn clean install"
      }
    }
  }
}
