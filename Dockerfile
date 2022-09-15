ENV DBHOST=MYSQL
ENV DBURL=mydb.com
FROM yanivomc/alpine-oraclejdk8:slim
WORKDIR /app
COPY ./spring-music.jar ./code/spring-music.jar
CMD java -jar -Dspring.profiles.active=none ./code/spring-music.jar
