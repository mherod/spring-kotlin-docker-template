FROM mherod/base-ubuntu-java:latest@sha256:4bcd521671261cd2c05c3bfb50018510cd7eddcc802d9d66589128af04845d56

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar