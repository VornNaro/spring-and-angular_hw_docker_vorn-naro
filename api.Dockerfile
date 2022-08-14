

FROM eclipse-temurin:17.0.3_7-jre-alpine
ADD ./ams-10th-gen.jar root.jar 
ENTRYPOINT ["java", "-jar", "root.jar"]

