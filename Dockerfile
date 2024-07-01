FROM tomcat:9.0-jdk8-openjdk-slim

RUN apt-get update \
    && apt-get install -y --no-install-recommends git

RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /app

RUN apt-get update \
    && apt-get install -y --no-install-recommends maven

WORKDIR /app

RUN mvn clean install

RUN cp target/hello-1.0.war /usr/local/tomcat/webapps/
