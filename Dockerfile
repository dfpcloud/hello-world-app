FROM openjdk:8-jre-alpine

ENV APP_HOME /var/app
ENV LOG ${APP_HOME}/logs
ENV DATA_PATH_FILES ${APP_HOME}/dataFiles
ENV RESOURCES ${APP_HOME}/resources

RUN apk update
RUN mkdir -p "$APP_HOME"
RUN mkdir -p "${LOG}"
RUN mkdir -p "${DATA_PATH_FILES}"
RUN mkdir -p "${RESOURCES}"

ADD *.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
EXPOSE 8080
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Dlogging.file=${LOG}/cip.log -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]
