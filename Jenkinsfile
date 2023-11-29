pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "amazoncorretto:17"
    }

    stages {
        stage('Build docker image') {
            steps {
                script {
                    dockerfileContent = '''
                        FROM amazoncorretto:11
                        WORKDIR /app
                        COPY target/your-application.jar .
                        CMD ["java", "-jar", "your-application.jar"]
                    '''
                    writeFile file: 'Dockerfile', text: dockerfileContent

                    def dockerImage = docker.build(env.DOCKER_IMAGE, '-f Dockerfile .')
                }
            }
        }
    }

    post {
        success {
            echo "Docker image built successfully"
        }
    }
}
