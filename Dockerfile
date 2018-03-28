FROM java:8-jre-alpine

ARG VERSION=0.13.9

EXPOSE 9324

ADD https://s3-eu-west-1.amazonaws.com/softwaremill-public/elasticmq-server-${VERSION}.jar /elasticmq-server.jar

COPY elasticmq.conf /etc/elasticmq/elasticmq.conf

VOLUME /etc/elasticmq

HEALTHCHECK wget -qO- http://localhost:9324?Action=ListQueues

CMD ["java", "-Djava.net.preferIPv4Stack=true", "-Dconfig.file=/etc/elasticmq/elasticmq.conf", "-jar", "/elasticmq-server.jar"]
