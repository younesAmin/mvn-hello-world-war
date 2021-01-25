def pipelineContext = [:]
node {
    def registryProject='registry.getlab.com/younes-amine/jenkins/wartest'
    def IMAGE="${registryProject}:v-${env.BUILD_ID}"
    
    stage('Clone'){
        git branch: 'main', url: 'https://github.com/younesAmin/mvn-hello-world'
    }
    
    stage('Maven pachage'){
        sh 'mvn package'
    }
    
    def img = stage('Build'){
        docker.build("$IMAGE", '.')
    }
    
    stage('Run'){
        img.withRun("--name run-$BUILD_ID -p 80:80"){ c->
        sh 'docker ps'
        sh 'netstat -netaup'
        sh 'sleep 30s'
        sh 'curl 127.0.0.1:8081'
        sh 'docker ps'
        }
    }
    
    stage('Push'){
        docker.withRegistry('htpps://registry.gitlab.com', 'regi1'){
            img.push 'latest'
            img.push()
        }
    }
}}
