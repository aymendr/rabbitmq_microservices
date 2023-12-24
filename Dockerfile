FROM maven:latest
WORKDIR /app
COPY . /app/
RUN mvn clean package -DskipTests
EXPOSE 7071
CMD [ "mvn", "spring-boot:run" ]