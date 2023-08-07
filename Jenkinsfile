pipeline{
  agent any
  environment{
    PATH= "/opt/apache-maven-3.9.3/bin:$PATH"
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
    stage("deploy"){
      steps{
        sshagent(["deploy_user"]){
        sh "scp -o StrictHostKeyChecking=no webapp/target/webapp.war ec2-user@13.233.229.14:/usr/local/tomcat/webapps"
        }
      }
    }
  }
}
