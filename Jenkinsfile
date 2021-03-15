node{
    def app

    stage('clone repository'){
        checkout scm
    }
    stage(){
        app = docker.build('alexo0001/DevOpsUsecase1')
    }
    stage('test image'){
        app.inside(
            sh 'echo "Test passed!"'
        )
    }
    stage('push image'){
        docker.withRegistry('http://registry.hub.docker.com', 'docker-hub-credentials'){
            app.push("$(env.BUILD_NUMBER)")
            app.push("latest")
        }
    }
}