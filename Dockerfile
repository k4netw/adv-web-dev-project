FROM openjdk:21-jdk-slim

RUN apt-get update && apt-get install -y curl

WORKDIR /usr/src/minecraft

ARG MINECRAFT_VERSION=a16d67e5807f57fc4e550299cf20226194497dc2
RUN curl -o server.jar https://piston-data.mojang.com/v1/objects/${MINECRAFT_VERSION}/server.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "server.jar", "nogui"]