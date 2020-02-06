FROM tomcat:alpine
MAINTAINER DevOps Team
RUN wget -O /usr/local/tomcat/webapps/launchstation04.jar http://localhost:8081/artifactory/ashwani01_assignment/com/nagarro/nagp/exam/0.0.1-SNAPSHOT/exam-0.0.1-20200204.075553-1.jar

EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run