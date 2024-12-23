FROM cgr.dev/chainguard/jre:latest
ENV PORT 8080
EXPOSE 8080
WORKDIR /opt
COPY backend/build/libs/*.jar /opt/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]