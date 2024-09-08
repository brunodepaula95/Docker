#FROM maven:3.8.4-jdk-8 AS build
#aqui estamos pegando o maven da imagem do maven e trazendo pra dentro do container

#COPY src /app/src
#COPY pom.xml /app
#copia todos os arquivos da pasta source e pom xml pra dentro da pasta app

#WORKDIR /app
#troca para o diretorio /app
#RUN mvn clean install 
#vai fazer a instalação das dependencias e gerar o build do projeto

#FROM openjdk:8-jre-alpine
#pega a imagem do jre utilizando a imagem da AWS utilizando a jdk alpine

#COPY --from=build 
#aqui você coloca o caminho do jar criado e depois no final coloca para onde ele vai ser copiado por exemplo /app/app.jar

#WORKDIR /app
#troca de diretorio pra dentro da pasta app


#EXPOSE 8080 
#declara que vai expor a porta 8080

#CMD ["java", "-jar", "app.jar"]
#comandos finais para iniciar a aplicando, que é o app.jar utilizando o java