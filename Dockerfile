# Image Java 21 légère pour exécuter l'application
FROM eclipse-temurin:21-jre

# Copie du fichier WAR généré
COPY build/libs/*.war app.war

# Démarrage de l'application Spring Boot
ENTRYPOINT ["java","-jar","/app.war"]