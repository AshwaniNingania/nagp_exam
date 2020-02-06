#
# Build stage
#
#FROM maven:3.6.0-jdk-11-slim AS build
#COPY src /exam/src
#COPY pom.xml /exam
#RUN mvn -f /exam/pom.xml clean package

#
# Package stage
#
FROM openjdk:8-jre-alpine
FROM byrnedo/alpine-curl
MAINTAINER DevOps Team
RUN curl -u admin:admin@123456789 -X PUT "http://10.175.173.34:8081/artifactory/ashwani01_assignment/com/nagarro/nagp/exam/0.0.1-SNAPSHOT/exam-0.0.1-20200204.075553-1.jar"
EXPOSE 8080
ENTRYPOINT ["java","-jar","/exam-0.0.1-20200204.075553-1.jar"]