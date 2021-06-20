pipeline {
  agent any
  stages {
    stage('Build') {
      steps { 
        // sh 'cd sqliInternal && mvn -B compile'
        echo 'build'
        echo 'build2'
        sleep 30
      }
    }
    stage('Unit Tests') {
      steps {
        // sh 'cd sqliInternal && mvn -B -DskipCompile process-classes'
        echo 'unit tests'
        sleep 100
      }
    }
    stage('SonarQube') {
    // withSonarQubeEnv(credentialsId: 'f2254dwq-ds59-40fa-8af7-08176e86507a', installationName: 'My SonarQube Server') { 
     // sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.7.0.1746:sonar'
    //  }
    steps {
        // sh 'cd sqliInternal && mvn -B -DskipCompile process-classes'
        echo 'sonar'
      }
    }
    stage('Package') {
      steps {
        // sh 'cd application && mvn -B DskipCopile package'
        echo 'package'
      }
    }
    stage('DockerBuild') {
      steps {
        // sh 'cd application && docker build-t internalapp .'
        echo 'Docker build'
      }
    }
    stage('Publish') {
      steps {
        // sh 'cd application && docker push -u harbor.sqli.com'
        echo 'publish'
      }
    }

  }
}
