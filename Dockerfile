FROM openjdk:8-jre-alpine
RUN apk add --update git
RUN git clone https://github.com/1315a/boxfuse-origin-1.git /app
WORKDIR /app
RUN ./gradlew build
EXPOSE 8080
CMD ["catalina.sh", "run"]
