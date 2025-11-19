# Image de base avec Java 17
FROM eclipse-temurin:17-jre-alpine

# Argument : chemin du jar généré par Maven
ARG JAR_FILE=target/student-management-0.0.1-SNAPSHOT.jar

# Copier le jar dans l'image
COPY ${JAR_FILE} app.jar

# Port utilisé par ton appli (ajuste si différent)
EXPOSE 8080

# Commande de démarrage
ENTRYPOINT ["java", "-jar", "/app.jar"]