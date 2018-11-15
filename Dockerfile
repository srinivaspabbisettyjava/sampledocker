FROM openjdk:8-jdk-alpine
ADD target/awsdocker-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Xmx150m","-jar","/app.jar"]
