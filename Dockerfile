FROM tomcat:9.0.65-jre11
RUN apt-get update && apt-get install -y git maven
WORKDIR /app
COPY https://github.com/1315a/boxfuse-origin-1.git .
