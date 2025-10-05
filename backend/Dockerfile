FROM amazoncorretto

WORKDIR /usr/src/app

COPY pom.xml .

COPY .mvn .mvn

COPY mvnw .

RUN ./mvnw dependency:go-offline -B

COPY . .

EXPOSE 8080

CMD ["./mvnw", "spring-boot:run"]