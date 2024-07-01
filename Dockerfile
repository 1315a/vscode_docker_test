FROM tomcat:9.0.65-jre11
RUN apt-get update && apt-get install -y git maven
WORKDIR /app
RUN git clone https://github.com/1315a/boxfuse-origin-1.git
COPY . /app/webapps/
RUN chown -R tomcat:tomcat /app/webapps/
ENV CATALINA_HOME=/app
ENV CATALINA_BASE=/app
EXPOSE 8080
RUN mvn clean package
CMD ["/app/bin/catalina.sh", "run"]
