# spring-boot-demo
Demo project for Spring Boot. This is a simple 'Hello World!' Spring Boot application.

## App

### Run
To run the application locally, move to the base of the repository and run the following command in the commandline:

`./mvnw spring-boot:run`

To test then, perform a curl command in another terminal, like so:

`curl "localhost:8080/hello"`

Expected response:

`Hello World!`

### Build
Or to build the application locally, move to the base of the repository and run the following command in the commandline:

`./mvnw package`

Which you can then run by:

`java -jar target/demo-0.0.1-SNAPSHOT.jar`

## Container
To build the image, simply run:

`docker build -t spring-boot-demo:<version> .`

Then run the container using the following command:

`docker container run --rm -p 8080:8080 spring-boot-demo:<version>`

Now you can run the same curl commands as described above to test the application.