FROM tomcat:9.0.62-jre11

# Установка JDK
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $JAVA_HOME/bin:$PATH

# Устанавливаем Git
RUN apt-get update && \
    apt-get install -y git

# Установка Maven
RUN apt-get update && \
    apt-get install -y maven

# Клонирование приложения из репозитория GitHub
WORKDIR /usr/local/tomcat/webapps
RUN git clone https://github.com/1315a/boxfuse-origin-1.git .

# запуск Tomcat
CMD ["catalina.sh", "run"]
