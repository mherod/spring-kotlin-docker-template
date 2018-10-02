FROM mherod/base-ubuntu-java:latest@sha256:0b9f4c5c72ebe5c275beae9225abf2c38a9ba9dab711372bfd10958216473f01

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar