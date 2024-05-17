FROM eclipse-temurin:17-jdk-alpine
VOLUME /var/lib/jenkins/workspace/test/target
ARG springboot-aws.jar
COPY ${springboot-aws.jar} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
