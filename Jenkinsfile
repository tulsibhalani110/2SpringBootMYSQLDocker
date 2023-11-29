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
                        FROM amazoncorretto:17
                        WORKDIR /app
                        COPY target/discountcode-0.0.1-SNAPSHOT.jar discountcode.jar
                        CMD ["java", "-jar", "discountcode-0.0.1-SNAPSHOT.jar"]
                    '''
                    writeFile file: 'Dockerfile', text: dockerfileContent

                    def dockerImage = docker.build(env.amazoncorretto, '-f Dockerfile .')
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
