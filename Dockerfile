FROM mherod/base-ubuntu-java:latest@sha256:024fb95d6baef6b0240e6201337823253767b0adb7502e9f18912c8ea4e65de2

COPY build/libs/*.jar /root/
WORKDIR /root

EXPOSE 8080

CMD java -server -Xms128m -Xmx256m -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -XX:+UseStringDeduplication -jar *.jar