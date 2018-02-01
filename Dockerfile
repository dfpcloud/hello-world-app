FROM java:8 
# Install maven
RUN apt-get update
RUN apt-get install -y maven

WORKDIR /code

# Prepare by downloading dependencies
ADD pom.xml /code/pom.xml
RUN ["mvn", "dependency:resolve"]

# Adding source, compile and package into a fat jar
ADD src /code/src
RUN ["mvn", "install"]
EXPOSE 8080
CMD ["/usr/lib/jvm/java-8-openjdk-amd64/bin/java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "target/hello-world-app-0.0.1-SNAPSHOT.jar"]

