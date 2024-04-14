FROM maven:3.9.6-eclipse-temurin-17-focal
WORKDIR /app
COPY ./ /app/
RUN mvn clean
RUN mvn compile
RUN mvn install
RUN chmod +x target/crud-0.0.1-SNAPSHOT.jar
RUN cp ./target/crud-0.0.1-SNAPSHOT.jar /app/java-app.jar
ENTRYPOINT [ "java", "-jar", "/app/java-app.jar" ]