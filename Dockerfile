FROM amazoncorretto:17
ADD target/discountcode-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java","-jar","/springboot-mysql-docker.jar"]
