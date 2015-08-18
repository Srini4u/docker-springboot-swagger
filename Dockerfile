ROM java:8
VOLUME /tmp
ADD target/springswagger-0.1.jar app.jar
RUN bash -c 'touch /app.jar'

#HTTP Port
EXPOSE 8080

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]