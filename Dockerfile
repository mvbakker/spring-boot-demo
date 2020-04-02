FROM openjdk:11.0.6-jdk-slim AS build
WORKDIR /usr/src/app/
COPY . .
RUN ./mvnw -f pom.xml clean package

FROM openjdk:11.0.6-jre-slim
COPY --from=build /usr/src/app/target/*.jar /usr/app/*.jar
RUN adduser --system --group spring
USER spring:spring
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/*.jar"]