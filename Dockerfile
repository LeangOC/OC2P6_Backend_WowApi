FROM eclipse-temurin:21-jre

COPY build/libs/*.war app.war

ENTRYPOINT ["java","-jar","/app.war"]