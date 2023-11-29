FROM openjdk:17
ADD target/discountcode-0.0.1-SNAPSHOT.jar discountcode.jar
ENTRYPOINT ["java","-jar","/springboot-mysql-docker.jar"]
