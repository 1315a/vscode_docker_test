FROM tomcat:9.0.65-jre11
WORKDIR /usr/local/tomcat/webapps/ROOT
RUN git clone https://github.com/1315a/boxfuse-origin-1.git
COPY boxfuse-origin-1/target/.war /usr/local/tomcat/webapps/ROOT/
ENV CATALINA_OPTS="-Xms512m -Xmx1024m"
CMD ["catalina.sh", "run"]
