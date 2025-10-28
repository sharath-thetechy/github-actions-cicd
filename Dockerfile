FROM openjdk:17-jdk-slim

ENV APP_HOME=/usr/src/app
WORKDIR $APP_HOME

# Copies JAR file from app/ folder (downloaded by workflow)
COPY app/*.jar $APP_HOME/app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
