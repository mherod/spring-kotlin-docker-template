FROM mherod/base-ubuntu-java:latest@sha256:26f5cc62a3a92902e39e1f7ba0a44f76b94eef5294b7bb70f0cd4c8d64a414c6

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar