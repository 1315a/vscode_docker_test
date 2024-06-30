FROM tomcat:9.0.65-jre11
RUN apt-get update && apt-get install -y git maven
