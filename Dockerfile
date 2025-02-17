# Base image (OS)

FROM openjdk:17-jdk-alpine

# working directory for the app

WORKDIR /app

# copy the code to from your host to your conatiner

COPY /src/Main.java /app/Main.java

COPY quotes.txt /app/quotes.txt

# Run the commands to install libs or to compile code

RUN javac Main.java

# Exposing the PORT

EXPOSE 8000

# Serve the app / Keep it running

CMD ["java","Main"]


