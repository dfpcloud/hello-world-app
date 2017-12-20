FROM java:8 
# Install maven
RUN apt-get update
RUN apt-get install -y maven

ARG VERSION=0.0.1-SNAPSHOT
ARG JAR_FILE="target/hello-world-app-${VERSION}.jar
#ADD ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
WORKDIR /code
# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]
RUN ["mvn", "verify"]
# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "package"]
EXPOSE 8061
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-jar",${JAR_FILE}]
