FROM eclipse-temurin:17-jdk-alpine
VOLUME /var/lib/jenkins/workspace/test/target
ARG springboot-aws.jar
COPY target/springboot-aws.jar message-server-1.0.0.jar
EXPOSE 8081
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]
