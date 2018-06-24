FROM mherod/base-ubuntu-java:latest@sha256:b84996be7fae580c8faadd304377e579a69908c7a330ca3c6422525c8523f971

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar