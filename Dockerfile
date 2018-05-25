FROM mherod/base-ubuntu-java:latest@sha256:1c8f45c7ce5a7ba3658813eb4ff961b3e083ed880591b77a8c595af6165da41c

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar