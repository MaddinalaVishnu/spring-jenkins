FROM openjdk:17.0.5+8
EXPOSE 8080
ADD target/cicd-integration.jar cicd-integration.jar
ENTRYPOINT ["java","-jar","/cicd-integration.jar"] 