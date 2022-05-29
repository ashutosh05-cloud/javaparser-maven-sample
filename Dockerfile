FROM openjdk:8
EXPOSE 8080
RUN yum update all
RUN yum install -y maven
COPY pom.xml /usr/local/service/pom.xml
COPY src /usr/local/service/src
WORKDIR /usr/local/service
RUN maven package
CMD ["java"]
